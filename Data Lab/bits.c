/* 
 * CS:APP Data Lab 
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#include "btest.h"
#include <limits.h>

/*
 * Instructions to Students:
 *
 * STEP 1: Fill in the following struct with your identifying info.
 */
team_struct team =
{
   /* Team name: Replace with either:
      Your login ID if working as a one person team
      or, ID1+ID2 where ID1 is the login ID of the first team member
      and ID2 is the login ID of the second team member */
    "adho3870", 
   /* Student name 1: Replace with the full name of first team member */
   "Adam Holt",
   /* Login ID 1: Replace with the login ID of first team member */
   "adho3870",

   /* The following should only be changed if there are two team members */
   /* Student name 2: Full name of the second team member */
   "",
   /* Login ID 2: Login ID of the second team member */
   ""
};

#if 0
/*
 * STEP 2: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.
#endif

/*
 * STEP 3: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the btest test harness to check that your solutions produce 
 *      the correct answers. Watch out for corner cases around Tmin and Tmax.
 */
//
// 15 problems, 40 points
// 2 - rating 1
// 5 - rating 2
// 4 - rating 3
// 4 - rating 4


/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
	//1 in binary is ...0001.
	//The minimum 2's complement integer is 1000...
	//Shifting the 1 bit left n-1 times results in 1 being the
	//most significant bit.
  return 1 << 31;
}



/* 
 * minusOne - return a value of -1 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int minusOne(void) {
	//The complement of 0 is 111...111 which is equivalent to -1 in 2's complement
  return ~0;
}


/* 
 * evenBits - return word with all even-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
int evenBits(void) {
	//85 in binary is 01010101.
	//Adding it to iteself left shifted in multiples of 8
	//yields all even bits as 1 and all odd bits as 0
  return 85 + (85 << 8) + (85 << 16) + (85 << 24);
}




/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
	//Right shifting x by 31 determines the sign of the number
	//A negative number will be all 1s a positive number all 0s
	//Left shifting 1 by n bits and adding it to the complement of 0
	//creates a mask that will eliminate the rightmost n digits
	//Comparing the mask to the shifted x with and creates an identical mask 
	//for negative x and no mask (all 0s) for positive x
	//Adding the mask to x with negative values replaces the n least
	//significant bits with 1s
	//Right shifting the results n bits is equivalent to x/n^2
  return (x + ((x >> 31) & ((1 << n) + ~0))) >> n;

}



/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
	//The XOR of x and y will be zero if they are equal and
	//non zero if they are not equal
	//The logical not of the result will be either 1 or 0
  return !(x ^ y);
}





/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
	//The complement of x is the 1's complement
	//Adding 1 will yield the 2's complement or negative representation
  return ~x + 1;
}





/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
	//n left shifted 3 times locates the byte number to be returned
	//Shifting x right by that number puts the correct byte
	//into the least significant byte place
	//Taking the or with the complement of 255 masks all higher bits
	//Right shifting 1 by 8 places yields 100000000 in binary
	//When added to the previous number this leaves the
	//least significant byte in place while replacing all
	//of the 1s in the more significant bits with 0s 
  return ((x >> (n << 3)) | (~255)) + (1 << 8);
}




/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
  //Right shifting x by n-1 moves the sign bit to the
  //least significant position and pads the other bits with the sign
  //Using the ! operator on x yields 1 if the leftmost bit was 0
  //or 0 if the leftmost bit was 1
  //Comparing the right shifted x with the negated x using or
  //will result in all 1s if x was negative and all 0s
  //if x was positive or 0.  The negation of that results in 1 for positive
  //or zero and zero for negative
  return !(x >> 31 | !x);
  }





/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
	//Right shifting x, y, and the sum of x and y by 31
	//results in values that only contain the sign bit of each original number
	//Comparing the right shifted x and y with XOR gives all 0s if they had the same signs
	//And all 1s if they had different signs
	//Comparing the right shifted x and y with their right shifted sum with XOR
	//gives two more numbers that indicate if the signs are equal (0s) or different (1s)
	//Negating those numbers gives 0 if the signs were different and 1 if they were the same
	//If the and of those values is 0 then x and y both have a different sign than their sum
	//If x and y had the same signs, but thier sum didn't, there is overflow 
  return !(!(((x >> 31) ^ ( y >> 31)) |
		   (!((x >> 31) ^ ((x + y) >> 31)) &
			!((y >> 31) ^ ((x + y) >> 31)))));
}






/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
	//Comparing x and y with the complement of 1 left shifted 31 bits by AND
	//sets the sign bit to 0 regardless of the original sign
	//Adding the 2's complement of x to y is equivalent to subtracting it
	//Shifting the result to the right 31 bits fills the bits with the current sign
	//Adding 1 to all 1s replaces them with 0, adding 1 to all 0s makes it 1
	//Comparing that with 1 by XOR results in 1 if the sign was positive
	//meaning the difference between x and y was positive or zero and x is <= y
	//If the XOR is 0 the sign was negative and x > y
	//Returning the negation of the quantity declares the comparison
  return !((((((y & ~(1 << 31)) + (~(x & ~(1 << 31)) + 1)) >> 31) + 1)) ^ 1);
}






/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 1 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
	//Right shifting x by n bits results in an arithmetic right shift
	//Left shifting 1 by 31 bits then right by n-1 (right n, left 1)
	//Then taking the complement creates a mask for the right side of
	//The shifted x
	//Comparing the mask and the shifted x with and will cause any
	//Leading 1s from the arithmetic shift to be 0s
	//While leaving the right side unaffected
  return (x >> n) & ~(((1 << 31) >> n) << 1);
}





/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 4 
 */
int leastBitPos(int x) {
	//Negating x and adding 1 creates the 2's complement of x
	//In 2's complement, the only bit that remains unchanged
	//Is the least signifigant bit that is a 1
	//Comparing the two numbers with and will return a number
	//That is all zeros except for the least significant 1 bit
  return x & (~x + 1);
}




/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int bitParity(int x) {
	//Each right shift moves the bits to the right by an increasing amount
	//The XOR comparison at each shift is on an increasingly smaller set
	//until all bits have been compared
	//After the final shift, comparing the result with 1 determins whether
	//the least significant bit is 1 or 0 - 1 indicates negative parity, 0 indicates positive
  int a, b, c, d, e, y = 1;

  a = x ^ x >> y;
  y = y << 1;
  b = a ^ a >> y;
  y = y << 1;
  c = b ^ b >> y;
  y = y << 1;
  d = c ^ c >> y;
  y = y << 1;
  e = d ^ d >> y;
  
  return e & 1;
}





/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 60
 *   Rating: 4
 */
int isPower2(int x) {
	//Comparing x by and to its 2's complement results in only the least significant
	//1 bit being equal to 1
	//Comparing the new number with the original x with XOR
	//determines whether they are equal
	//If they are equal then x only had a single 1 bit and is a power of two
	//Otherwise it is not
	//Comparing by and with x returns 0 if x is 0
	//Comparing with the negation of x left shifted 31 bits returns 0 if x is negative
	return (!((x & (~x +1)) ^ x)) & x & (!(x>>31));
}





/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
	//The complement of x + 1 is the 2's complement or negative representation of x
	//Comparing it using or will result in 111...110 for any non zero x
	//or all 0s when x = 0
	//Right shifting by n-1 will make all the bits 1 for non zero x
	//or all 0s for x = 0
	//Adding 1 to the resulting value will replace all 1s with 0s
	//Or will turn all 0s into 1 in the least significant bit.
  return ((x | (~x + 1)) >> 31) + 1;
}
