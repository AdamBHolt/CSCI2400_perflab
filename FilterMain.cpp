#include <stdio.h>
#include "cs1300bmp.h"
#include <iostream>
#include <fstream>
#include "Filter.h"

using namespace std;

#include "rtdsc.h"

//
// Forward declare the functions
//
Filter * readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int
main(int argc, char **argv)
{

  if ( argc < 2) {
    fprintf(stderr,"Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  int samples = 0;
  //Daclare sample outside of loop
  double sample;

  //Initialize values outside of loops
  struct cs1300bmp *input = new struct cs1300bmp;
  struct cs1300bmp *output = new struct cs1300bmp;
 
  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename = "filtered-" + filterOutputName + "-" + inputFilename;

    //Replace ok variable with direct function call
    if ( cs1300bmp_readfile( (char *) inputFilename.c_str(), input)) {

      sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *) outputFilename.c_str(), output);
    }
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);

}

struct Filter *
readFilter(string filename)
{
  ifstream input(filename.c_str());

  //Declare iterators outside of loops
  int i, j;
  //Declare value outside of loop
  int value; 

  if ( ! input.bad() ) {
    int size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    int div;
    input >> div;
    filter -> setDivisor(div);
    for (i=0; i < size; i++) {
      for (j=0; j < size; j++) {
	value;
	input >> value;
	filter -> set(i,j,value);
      }
    }
    return filter;
  }
}


double
applyFilter(struct Filter *filter, cs1300bmp *input, cs1300bmp *output)
{

  long long cycStart, cycStop;

  cycStart = rdtscll();

  output -> width = input -> width;
  output -> height = input -> height;
   
  //Create local variable instead of dereferenced memory 
  int inWidth = input -> width;
  int inHeight = input -> height;

  //Move call to getSize() outside of loop
  int filterSize = filter -> getSize();

  //Array to hold filter x, y values
  int filterXY[filterSize][filterSize];

  //Temporary accumulators
  int temp1, temp2, temp3;

  //Variables for value of each plane
  int plane1Val, plane2Val, plane3Val;

  //Moved call to getDivisor out of loop
  int divisor = filter -> getDivisor();

  //Declare variables outside of loops
  int row, col, i, j;

  //New loop to process x, y values outside of main loop
  for(i = 0; i < filterSize; i++)
    for(j = 0; j < filterSize; j++)
      filterXY[i][j] = filter -> get(i, j);


  //Switched order of variables from Stride-N^2 to Stride-1
  //Removed outer loop and processed each plane within the current structure
    for(row = 1; row < inHeight - 1 ; row = row + 1) {
      for(col = 1; col < inWidth - 1; col = col + 1) {

	plane1Val = plane2Val = plane3Val = 0;
       
        //Switched order of variables from Stride-N to Stride-1
	for (i = 0; i < filterSize; i+=1) {
	  for (j = 0; j < filterSize; j+=1) {
	    
            //Set each temporary vairable - allows pipelining 
	    temp1 = input -> color[0][row + i - 1][col + j - 1] * filterXY[i][j];
	    temp2 = input -> color[1][row + i - 1][col + j - 1] * filterXY[i][j]; 
	    temp3 = input -> color[2][row + i - 1][col + j - 1] * filterXY[i][j];
	    
	    //Add temp values to totals
	    plane1Val += temp1;
	    plane2Val += temp2;
	    plane3Val += temp3;

	  }
	}

	//Use local divisor variable instead of function call
	//value = value / divisor;
	//Do not calculate if divisor is 1
	if(divisor != 1){
	  plane1Val = plane1Val / divisor;
          plane2Val = plane2Val / divisor;
          plane3Val = plane3Val / divisor;
        }

	if ( plane1Val < 0 ) { plane1Val = 0;}
	if ( plane1Val > 255 ) { plane1Val = 255; }
	if ( plane2Val < 0 ) { plane2Val = 0; }
	if ( plane2Val > 255 ) { plane2Val = 255; }
	if ( plane3Val < 0 ) { plane3Val = 0; }
	if ( plane3Val > 255 ) { plane3Val = 255; }

	output -> color[0][row][col] = plane1Val;
	output -> color[1][row][col] = plane2Val;
	output -> color[2][row][col] = plane3Val;

      }
    }

  cycStop = rdtscll();
  double diff = cycStop - cycStart;
  double diffPerPixel = diff / (output -> width * output -> height);
  fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n",
	  diff, diff / (output -> width * output -> height));
  return diffPerPixel;
}