import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
// imports dart's core libraries and compiler make this library available to this progam
import "dart:math";

void main() {
/*
// commenting code
// this code wont executed
//there are main two types of comment

//1) code level comments
//2) block comments

//this is single line comment of type code level comment.
//we can stack up single line comment to write multiline comment
// e.g. below statement wont get executed

// print("hello world !");

/* this is  a  multiline comment, the start is denoted by '/*' and end is denoted
by '*/' */

  /// this is documentation comment and its contineous to next line automatically
  /// this is block type of comment

/**
 *  this is also a documentation comment. it is enclosed between '/**' and '*/'  
 *  */

 */

/*
//printing out
//print will output to the debug console.
//it accepts given string as a input and print it to console as a standard output.
  print("Hello, I am learning Dart And Flutter !");
*/

/*
  //Statements and expresions
  // Statements:-
  // in print method "" is prefer rather than ''. & semicolon finishes statement.
  print("Hello, Dart Apprentice reader, welcome to You!");

  // if block - here condition inside parantheses is being evalueted first.
  //based on result next statement/ statement gets executed.
  if (50 < 100) {
    // no semicolon needed here in if statement & it is enclosed between {}
    print("Yes -> Condition is True");
  }

  //Expressions:-

  // expression is value or something that can be calculated as value.
  //here 42 is only value, which would be discarded by processor after execution of it.
  4252;
  //3 and 2 are operand and addition operation being performed. result of that addition
  //would be discarded after execution.
  30 + 12;
  //it's just a string which will be stored for temporary and discarded as soon as execution of that statement is completed.
  "hello,dart";
  //since dart is stricly type, it gives error. --> undefined name 'x'
  //x;

*/

/*
  // Arithmetic operations:-

  // Simple Oerations:-
  //ADD:-
  // both 2 and 9 are stored in MM & addition would be performed by processor, and sum value
  //would be return back to print and it prints sum(INT) as a standard output on console.
  print(2 + 9); // Ans. 11

  //SUB:-
  // both 75 and 60 are stored in MM & subtraction would be performed by processor, and sub value
  //would be return back to print and it prints sub(INT) as a standard output on console.
  print(75 - 60); // Ans. 15

  //MUL:-
  // both 15 and 4 are stored in MM & multiplication would be performed by processor, and answer value
  //would be return back to print and it prints answer(INT) as a standard output on console.
  print(15 * 4); //Ans. 60

  //DIV:-
  // both 24 and 3 are stored in MM & division would be performed by processor, and quotient value
  //would be return back to print and it prints quotient as a standard output on console. datatype -> double
  print(24 / 3); //Ans. 8
*/

/*
  // Decimal Numbers:-
  // Dart expression 22 / 7 would be evalueted and result returns to print;
  //Dart gives standard decimal answer. print() prints it to console.
  print(22 / 7); // Ans is in float 3.142857142857143

  // Dart expression 22 / 7 would be evalueted and result returns to print;
  //Dart gives standard decimal answer but now it would be converted to integer. print() prints integer value to console.
  print(22 ~/ 7); // '~/' give ans in decimal 3.
*/

/*
  //The Euclidean modulo operation :-

  // both 25 and 10 stored into MM, processor will perform division operation on that
  // processor retuns remainder of that division to print function back. print will print it to console.
  print(25 % 10); // remainder of division
  */

/*
  // Order OF operations
  // parentheses disambiguate the intended order of operation
  /// all three operand stored in MM, division has higher precedence, so processor will execute division first.
  /// and then add answer of division with 2 would happen. final answer is 72.
  /// answer would discarded as soon as next statement executes

  350 / 5 + 2;

  // parentheses have highest precedense so if we want addtion first then
  // if we are uncertaion about precedence of operator then we can use parentheses.
  // ~/ & % have the same precedence as multiplication and division.
  // answer would discarded as soon as next statement executes from MM
  350 / (5 + 2);
*/

/*
// Math function
// these convert an angle from degrees to radians and then computes sin and cosine of that result
// result wont store and discarded from memory
// here dart provides constant value for pi and it will be replaced at compile time
  sin(45 * pi / 180);
//print(sin(45 * pi / 180));
//same for cosine funciton
  cos(135 * pi / 180);
//print(cos(45 * pi / 180));
// dart provides sqrt() function, max(), min() functions
// result will discard as soon as next statement gets executed.
  sqrt(2);

// processor computes maximum and minimum values and store it in MM
// value return by max function will discard as soon as next statement gets executed.
// same happens in min function
  max(5, 10);
// same as above
  min(-5, -10);
  print(sin(45));
*/

/*
// Mini - exercise
// value of 1 over squareroot 2

  print("value of 1/sqrt(2) --> ${1 / sqrt(2)}");
  print("value of sine 45 deg --> ${sin(45 * (pi / 180))}");
*/

/*
//Naming data

  /// Identifiers can include both, characters and digits. However,
  /// the identifier cannot begin with a digit.
  /// Identifiers cannot include special symbols except for underscore (_) or a dollar sign ($).
  /// Identifiers cannot be keywords, must be unique, case-sensitive, cannot contain spaces.
  /// e.g. first_Name
  /// fname
*/

/*
  // Variables
  // below statement declares variable named num of type integer. it sets value of num to .
  // this variable stored in MM by processor and stay there until end of execution.
  // int part tells Dart explicitly that the type is.

  int num = 10;

  // now value in MM being changed to 15 by assigning operation of processor.
  num = 15;

  // as int can store integeres. decimal number is also like so:
  // it declares variable named apple of type double and assigns value 3.14159
  // this variable stored in MM by processor and stay there until end of execution.

  double apple = 3.14159;

  ///moreover, you’ll be interested to learn that 10, 3.14159
  /// and every other value that you can assign to a variable are
  /// objects in Dart. In fact, Dart doesn’t have the
  /// primitive variable types that exist in some languages.
  /// Everything is an object. Although int and double look like primitives,
  ///  they’re subclasses of num, which is a subclass of Object

  //as number is object in dart we can perform some operation like this.
  // result wont be stored anywhere, it would discarded from MM in next statement execution

  10.isEven;
  3.14159.round();
  // print(11.isEven);
  // print(3.14159.round());

*/

/* 
 //Type Safety:

  //Dart is a type-safe language. That means once we tell Dart what a variable’s type is, we can’t change it later. Here’s a
  //assigning double value to int variable is not allowed.

  int MyInt = 10;
  //MyInt = 3.1459;

  // sometimes it's useful to be able to assign related types to the same variable.
  // in order to do that we should declare variable with parent class type of int. e.g. num
  // num is expecting int or double data here.
  num Mynumber;
  Mynumber = 10;
  Mynumber = 3.14159;
  // num type can be either an int or a double. so string assignment is not allowed. & compiler gives error.
  //Mynumber = "t";
*/

/*
// Dynamic type:
// this let us assign any data type we like to our variable and compiler wont give any warning
// allows to assign int, double or string
  dynamic myVariable;
  myVariable = "t";
  // assigning int(object) to dynamic type variable
  myVariable = 10;
  // assigning double(object) to dynamic type variable
  myVariable = 3.14159;

  // but we should not do this. friend dont let friend use dynamic
*/

/*
//Type inference

  /// dart is smart enough to figure out what is type of variable.
  /// var keyword says to dart -> use whatever type is appropriate.
// no need to tell dart that 10 is an integer. dart infers the type and makes someNumber an int
// still typesafety applies
//type is determined based on assignment value and stores it in MM.
  var someNumber = 10;
  // assigning int type to int -> allowed
  someNumber = 15;
  //now someNumber is int type and strictly follows type safety so below is not allowed. gives error, even wont compile. Quick Match
  //someNumber = 3.1415;
*/

/*
//Constants
  /// two types of variables -> whose values never change.
  /// declared with const and final keyword.

// const constants
// mutable data -> variable whose value can change are known as mutable data.
// constant use -> variable passed to function
// only used for compile time constants.

// const creates constant in dart
  const myConstant = 10;
// just as with var, dart uses inference to determine that myConstant is int.
// once variable is declared a constant, we cant change its data.
// error : Constant variables can't be assigned a value
//  myConstant = 0;


// final constants
  /// sometimes, we want constant in our program, but we dont know its value at compile time.
  /// only know the value after the program starts running. This kind of constant is known as a runtime constant.
  /// There are many reasons you might not know a value until after your program
  /// is running. For example, you might need to fetch a value from the server, or query the device settings,
  ///  or ask a user to input their age
  /// DateTime.now() is a Dart function that tells you the current date and time when the code is run.
  final hoursSinceMidnight = DateTime.now().hour;
  print(hoursSinceMidnight);

// this will produce error because final variable can only be set once.
// error : Constant variables can't be assigned a value
//hoursSinceMidnight = 0;
  */

/*
//Using meaningful names
  ///Always try to choose meaningful names for your variables and constants. Good
  /// names act as documentation and make your code easy to read. A good name
  /// specifically describes the role of a variable or constant.
  /// name should reflect to something & in standard small "lowerCamelCase"

  // good names
  // personAge
  // numberOfPeople
  // gradePointAverage

  // bad name
  // a
  // temp
  // average

  //lower camel case rules
  /*
  Start with a lowercase letter. If the name is made up of multiple words, join them 
  together and start every word after the first one with an uppercase letter.
  Treat abbreviations like words (for example, sourceUrl and urlDescription).*/
*/
/*

// Mini- exercise
  const myAge = 19;
  double averageAge = 19;
  averageAge = 19.5;
  const testNumber = 50;
  const evenOdd = testNumber % 2;
  //error :Constant variables can't be assigned a value.
  //evenOdd = 20;
*/

/*
// Increment and decrement
// declares variable using  var and assigns int to it and now counter type is int
  var counter = 0;

  //value resides in counter variable incremented by one
  counter += 1;
  // value resides in counter variable decremented by one and it stored back to that variable.
  counter -= 1;
  // += and -= are shorthand operator
  // it seams counter = counter - 1;

  // declares variable of type double and assigns value 10 to it.
  double myvalue = 10;
  // shorthand multiplication as myvalue = myvalue * 3;
  myvalue *= 3;
  print(myvalue);
  //same way division happens
  //Division in Dart produces a result with a type of double, so
  //myValue could not be an int
  myvalue /= 2;
  print(myvalue);
*/

//Challenges

/*
  /// challenge 1: variable
  const myAge = 20;
  int owndogs = 0;
  owndogs += 1;
  print("number of dogs : $owndogs");
*/

/*
//Challenge 2: make it compile

  var age = 16;
  print(age);
  age = 30;
  print(age);
  */

/*
  //challenge 3: compute the answer
  const x = 46;
  const y = 10;

  // in each variable declaration either value is assigned to it or expression
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print("$answer1 $answer2 $answer3");
*/

/*
//challenge 4 : Average rating
  const rating1 = 10, rating2 = 15, rating3 = 17;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print("average rating $averageRating");
*/

/*
//challenge 5 : Quadratic equations
  double a = 1, b = -4, c = 4;
  final double root1 = ((-1 * b) + sqrt((b * b) - (4 * a * c))) / (2 * a);
  final double root2 = ((-1 * b) - sqrt((b * b) - (4 * a * c))) / (2 * a);
  print("root1 : $root1 root2: $root2");
*/
}
