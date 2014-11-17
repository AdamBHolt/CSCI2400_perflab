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

  //Create local variable instead of dereferenced memory 
  int inWidth = output -> width = input -> width;
  int inHeight = output -> height = input -> height;
   
  //Calculate outside of loop 
  int inWidthM = inWidth - 1;
  int inHeightM = inHeight - 1;

  //Move call to getSize() outside of loop
  int filterSize = filter -> getSize();

  //Array to hold filter x, y values
  int filterXY[filterSize][filterSize];
  int xy;

  //Temporary accumulators
  int temp1, temp2, temp3;

  //Variables for value of each plane
  int plane1Val, plane2Val, plane3Val;

  //Moved call to getDivisor out of loop
  int divisor = filter -> getDivisor();

  //Declare variables outside of loops
  int row, col, i, j;

  //Temporary row and column variables
  int r, c;

  //New loop to process x, y values outside of main loop
  for(i = 0; i < filterSize; i++)
    for(j = 0; j < filterSize; j++)
      filterXY[i][j] = filter -> get(i, j);


    //Switched order of variables from Stride-N^2 to Stride-1
    //Removed outer loop and processed each plane within the current structure
    for(row = 1; row < inHeightM; row++) {
      for(col = 1; col < inWidthM; col++) {

	//Reinitialize plane values to 0
	plane1Val = plane2Val = plane3Val = 0;
       
        //Switched order of variables from Stride-N to Stride-1
	for (i = 0; i < filterSize; i++) {

	  //Reinitialize temp variables to 0;
	  temp1 = temp2 = temp3 = 0;
	  for (j = 0; j < filterSize; j++) {
	    
            //Initialize temporary variables to save calculation time
	    xy = filterXY[i][j];
	    r = row + i - 1;
	    c = col + j - 1;

	    //Process each plane individually instead of looping 
	    temp1 += input -> color[0][r][c] * xy;
	    temp2 += input -> color[1][r][c] * xy; 
	    temp3 += input -> color[2][r][c] * xy;
	  }
	  //Add temp values to plane values
	  plane1Val += temp1;
	  plane2Val += temp2;
	  plane3Val += temp3;
	}

	//Use local divisor variable instead of function call
	//value = value / divisor;
	//Do not calculate if divisor is 1
	if(divisor != 1){
	  plane1Val /= divisor;
	  plane2Val /= divisor;
	  plane3Val /= divisor;
        }

	//Use nested conditionals instead of if statements
	plane1Val = plane1Val < 0 ? 0 : plane1Val > 255 ? 255 : plane1Val;
	plane2Val = plane2Val < 0 ? 0 : plane2Val > 255 ? 255 : plane2Val;
	plane3Val = plane3Val < 0 ? 0 : plane3Val > 255 ? 255 : plane3Val;

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
