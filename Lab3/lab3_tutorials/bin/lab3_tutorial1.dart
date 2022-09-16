import "dart:math";

void main() {
  // Loops

  // while loops
  /*
  // loop repeats a block of code until condition becomes false
  var count = 5;
  // variale count with value 1
  while(count > 0)
  {
    print(count);
    count--;
  }
  */

  // Do-while loops
  /*
  //it is varient of while loops, but in this condition is evaluated at last.
  num sum = 1;
  do{
    sum += 5;
    print(sum);
  }while(sum < 15);
  //condition evaluted here, based on it next iteration or it exits loop
  // it might print result > 15 as condition evaluated at last.
  */
  //comparing while and do while loops

  // whole code inside do while loop executes once whether the conditon is true or false
  // in while loop code  executes only if condition is true that is the basic difference

  // Breaking out of a loop

  // we can break loop before base condition evaluates to false by break keyword\
  //example
/*
  var sum = 1;
  while (true) {
  sum += 4;
  // if sum is grater than 10
  // loop breaks
  if (sum > 10) {
  break;
    }
  }
*/
//A Random interlude
/*
//dart provides functionality to generate random numbers
// library is dart:math 
final random = Random();
var num = random.nextInt(6) +1;
while(  num != 6)
{
  print(num);
  num = random.nextInt(6) +1;
  print("not a six");
}
print(num);
print("finally, it's a six");

/*
Random is a class to help with random numbers, and nextInt
is a method that generates a random integer between 0 and
one less than the maximum value you give it
*/

*/
// For loops
/*
// c-style for loops
//for(iterator; condition; increment)
// after each iteration condition gets evaluated
for(int i=0; i<5; i++)
{
  print("semester $i compelted.");
}
// if condition becomes false then loop exits
*/

// Continue Keyword.
/*
// continue keyword is useful to skip iteration and checks condition and based on that performs next step
for(var i=0; i<5; i++)
{
  if(i==2)
  {
    // 2 wont be printed.
    continue;
  }
  print("number is $i");
}
*/

// For-in loops
/*
///It doesn’t have any sort of index or
///counter variable associated with it, but it makes iterating
///over a collection very convenient.

const myString = 'I ❤ Dart';
//myString.runes is a collection of all the code points in myString.
for (var codePoint in myString.runes) {
print(String.fromCharCode(codePoint));
/*
The in keyword tells the for-in loop to iterate over the
collection in order, and on each iteration, to assign the
current code point to the codePoint variable. Since runes is
a collection of integers, codePoint is inferred to be an int. 
*/

*/
// For-each loops
/*
// we can simplify for in loops even more with the for each method that is available to collections
const mynumbers = [1,2,3];
//mynumbers.forEach((element) {element += 1;});
// cant effect on mynumbers
// it wont change number -> e.g. readonly
mynumbers.forEach((element) => print(element));

*/
// Mini-exercise
/*
//1)
var counter = 0;
while(counter < 10)
{
  print("counter is $counter");
  counter++;
}
//2)
for(int i=1; i<=10; i++)
{
  print(i*i);
}

//3)
const numbers = [1,2,4,7];
for(var i in numbers)
{
  print(i);
}
//4)
numbers.forEach((element)=> print(element));
}
*/

// challenges
// challengge 1: find the error
// no error

// challenge 2:
// true && true = true
// false && false = false
// (true && 1 != 2) || (4 > 3 && 100 < 1) => true
// ((10/2) > 3) && ((10%2) == 0) // true

//challenge 3: Next power of two
//   for (int i = 1; i < 10; i++) {
//     print(pow(2, i));
//   }

//challenge 4: fibonacci

  // num pre, pre2;
  // pre = 1;
  // pre2 = 1;
  // for (int i = 0; i < 10; i++) {
  //   var ans = pre + pre2;
  //   pre = pre2;
  //   pre2 = ans;
  //   print(ans);
  // }

//challenge 5: how many times ?
  /* var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }
  print(sum);*/
// value of sum would be 1+2+3+4+5 = 15
// and there will be 6 iteration

// challenge 6: The final countdown
  // for (num n = 10; n >= 0; n--) print(n);

//challenge 7: print a sequence
  // num number = 0;
  // for (int i = 0; i <= 10; i++) {
  //   print(number);
  //   number += 0.1;
  // }

// how to create project in console.
}
