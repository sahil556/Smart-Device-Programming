// import 'package:lab2_tutorial2/lab2_tutorial3.dart' as lab2_tutorial3;

void main() {
  //Data types in dart :
  //int, double, num, dynamic, string
  ///the root of all types is the Object type. This type defines a few core operations, such
  ///as testing for equality and describing the object in text. Every other type in Dart is a
  ///subtype of Object, and as a subtype, shares Object’s basic functionality.
/*
  // type inference
  //Annotating variables explicitly
  // It’s fine to always explicitly add the when we declare a variable. This means writing the data type
  // before the variable name
  int myInteger = 10;
  double myDouble = 3.14;
*/

/*
  // creating constant variables
  /// to make variable immutable and still keep the type annotation, we can have const and final keyword
  const int myInteger = 10;
  // it creates immuable variable called myInteger with inchangable value 10;
  const double myDouble = 3.14;
  // same as above
  // declaration with final keyword
  final int myInteger1 = 10;
  final double myDouble1 = 3.14;
  // use of immutable data : -> when value is immutable, that means we can trust that no one will change that value after we create it.
*/

/*
  // Letting the compiler infer the type
  //You’re smart enough to know that 10 is an int and 3.14 is a double, and it turns out
  // the Dart compiler can deduce this as well.
  /*
  The compiler doesn’t need you to explicitly tell it the type every time — it 
  can figure the type out on its own through a process called 
. type inference.
  */
  // dart supports inference
  // type will be decided based on type of assigned value. it wont change further
  const myInteger3 = 10;
  //same in case of double value;
  const myDouble3 = 3.14;
*/

/*
  // Checking the type at runtime
  /* dart does have a programmatic way of doing the same thing: the 'is' keyword.*/
  num mynumber2 = 3.14;
  print(mynumber2 is double);
  print(mynumber2 is int);

  //Another option to see the type at runtime is to use the
  // runtimeType property that is available to all types
  print(mynumber2.runtimeType);
  */

/*
// Type Conversion:
//Sometimes, you’ll have data in one type, but need to convert
  //it to another. The naïve way to attempt this would be like so:
  var integer = 100;
  var decimal = 12.5;
  // error: A value of type 'double' can't be assigned to a variable of type 'int'.
  //integer = decimal;
  /* implicit conversion is a frequent source of software bugs
and often hurts code performance. Dart disallows you from
assigning a value of one type to another and avoids these 
issues.
*/
  // only explicit type conversion is allowed in dart
  // we can convert this double to an int like so
  // The assignment now tells Dart, unequivocally, that you want
  // to convert from the original type, double, to the new type, int
  integer = decimal.toInt();
  print(integer); // 12
*/

/*
//Operators with mixed types
// what if we have int  that we want to multiply with double value;
  //it takes sailing of double value
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  //hourlyRate is a double and hoursWorked is an int
  const totalCost = hoursWorked * hoursWorked;
  // Dart will make totalCost a double. This is the safest choice, since
  // making it an int could cause a loss of precision
  print(totalCost);
  print(totalCost
      .runtimeType); // bug is here : it gives int, but idealy it should be double

  // explicite conversion by programmer
  //The parentheses tell Dart to do the multiplication first, and
  //after that, to take the result and convert it to an integer
  //value. However, the compiler complains about var newVariable = this

  //const totalcost2 = (hourlyRate * hoursWorked).toInt();

  //The problem is that toInt is a runtime method. This means
  //that totalCost can’t be determined at compile time, so
  //making it const isn’t valid

  final totalcost2 = (hourlyRate * hoursWorked).toInt();
  print(totalcost2);
*/

/*
//Ensuring a certain type

  // Sometimes you want to define a constant or variable and
  //ensure it remains a certain type, even though what you’re assigning to it is of a different type.
  const wantADouble = 3;
  print(wantADouble.runtimeType);
  // it sets wantADouble as int, to store int value as double
  // this uses type conversion to convert 3 into double
  final actuallyDouble = 3.toDouble();
  print(actuallyDouble.runtimeType);
  // in case if we write 3.0 instead of 3 --> it is double
  const wantDouble = 3.0;
  print(wantDouble.runtimeType);
*/

/*
// Casting Down
//At other times, you may have a variable of some general
  //supertype, but you need functionality that is only available in a subtyp
  // this is known as type casting
  num someNumber = 3;
  //checking if it's even or odd
  // The getter 'isEven' isn't defined for the type 'num'.
  //print(someNumber.isEven);

  // num is too general of a type to know anything about even or odd numbers
  // Only integers can be even or odd; so the issue is that num could potentially be a double atruntime, since
  //num includes both double and int. In this case, though,
  // you’re sure that 3 is an integer, so you can cast someNumber to int.
  // as keyword
  final someInt = someNumber as int;
  // providing int as double give error and vice versa.
  // in such cases : If you do need to convert an int to a double atruntime, use 
  //the toDouble method that you saw earlier:
  print(someInt.isEven);
  // The as keyword causes the compiler to recognize someInt as an int
*/

/*
//Mini-exercises
// exercise - 1:
  const age1 = 42; // hovering shows both as int type.
  const age2 = 21;

// exercise - 2
  const averageAge = (age1 + age2) / 2; // hovering shows averageAge type is double
  // since 63 / 2 gives 31.5, as it is decimal so type of averageAge is double 

  */

//Strings
// Working with strings in Dart
// Dart provides string support through String data type.

// Strings and characters
// variable strings
/*
The right-hand side of this expression is known as a 
literal. Due to type inference, Dart knows that greeting is of 
type String. Since you used the var keyword, you’re allowed 
to reassign the value of greeting as long as the new value is 
still a string
*/

/*
  var greetings = "Hello, Dart";
  print(greetings);
  greetings = "hello, Flutter";
  print(greetings);
  // in this case : you completely discarded the string 'Hello, Dart!'and replaced it with a whole new string
  // whose value was 'Hello, Flutter!'
  // . Dart doesn’t have char or character type

  const letter = "a";
*/

/*
// Single-quotes vs. double-quotes

//Dart allows you to use either single-quotes or double-quotes for string literals. Both of these are fine
//you would need to use the backslash \ as an escape character so that Dart knows that the string isn’t
//ending early:
  "my cat\"s food";
  print("my cat\"s food");
*/

/*
// concatenation
// in dart we can concatenate string simply by using the addition operator
  var message = "hello " + "my name is sahil ";
  const name = "nandaniya";
  message += name;
  print(message);
  //hello my name is sahil nandaniya
  // If you find yourself doing a lot of concatenation, you should
  //use a string buffer, which is more efficient
*/
/*
// Interpolation
//You can also build up a string by using , which
//is a special Dart syntax that lets you build a string in a
//manner that’s easy for other people reading your code to
//understand:

  const name = "sahil";
  const introduction = "hello my name is $name";
  print(introduction);

  const onrThird = 1 / 3;
  const sentence = "one third is $onrThird";
  //const sentence = "one third is ${onrThird.toStringAsFixed(3)}";
  print(sentence);
*/
  //Multi-line strings
  /*
  Dart has a neat way to express strings that contain multiple 
lines, which can be rather useful when you need to use very 
long strings in your code
*/

/*
  const bigString = ''' 
You can have a string
that contains multiple
lines
by
doing this.''';
  print(bigString);
  const twoLines = 'This is\ntwo lines.';
  print(twoLines);
  String name = "sahil";
  const rawString = r'My name \n is $name.';
  print(rawString);
  */

/*
// Mini-exercise

//1)
  const firstName = "sahil";
  const lastName = "Nandaniya";

//2)
  const fullName = firstName + " " + lastName;
  print(fullName);
//3)
  const myDetails = "hello, my full name is $fullName";
  print(myDetails);

*/

/*
//Object and dynamic types
// inorder to solve problem of javascript
  dynamic myVariable = 45;
  myVariable = "hello";

  /// OK absolutely

  //In fact, this is the default if you use var and don’t initialize
  //your variable:
  var myVariable2;
  myVariable2 = 42;
  myVariable2 = "hello";

  print(myVariable2);

  //If you need to explicitly say that any type is allowed, you
  //should consider using the Object? type

  Object? myVariable3 = 42;
  myVariable3 = "hello"; //ok

  */
/*
// challenges
//challenge 1: Teacher's grading
  const studentAttendence = 90;
  const studentHomework = 80;
  const studentExam = 94;
  const attendence = 20, homework = 30, exam = 50;

  const finalGrade = ((studentAttendence * attendence) +
          (studentHomework * homework) +
          (studentExam * exam)) /
      100;

  print(finalGrade);

// challenge 2 : find the error

  const name = "Ray";
  //name += "wenderlich";
  // error :  constant variable can't be changed after declaration.

// challenge 3 : what type ?
  const value = 10 / 2;
  // type = double
  print(value is double); // true

  //challenge 4: in summary
  //What is the value of the constant named summary
  const number = 10;
  const multiplier = 5;
  final summary = '$number* $multiplier = ${number * multiplier}'; // true.
  print(summary.runtimeType);
  // string
*/
}
