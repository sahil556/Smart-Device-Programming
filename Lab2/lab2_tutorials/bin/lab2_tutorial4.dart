// import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

enum AudioState { playing, paused, stopped }

void main() {
  //print('Hello world: ${lab2_tutorial4.calculate()}!');
/*
 // making comparisons
  // Boolean values
  /*Dart has a data type just for this. It’s called bool, which is
short for . A Boolean value can have one of two
states. While in general you could refer to the states as yes
and no, on and off, or 1 and 0, most programming languages, 
Dart included, call them and false */

  const bool yes = true;
  const bool no = false;

  // Boolean operator
  /* Booleans are commonly used to compare values. For 
example, you may have two values and you want to know if 
they’re equal. Either they are equal, which would be true, or 
they aren’t equal, which would be false.
*/

// Testing equality

  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo);

// Sometimes you need parentheses to tell Dart what should
//happen first.

  const doesOneEqualTOTwo2 = 1 == 1;
  print(doesOneEqualTOTwo2);

*/

/*
// Testing inequality
//You can also find out if two values are not equal using the !=
// operator:
  const doesOneNotEqualTwo = (1 != 2);
  const alsoTrue = !(1 == 2);
  print(doesOneNotEqualTwo); // true

*/

/*

// Testing greater and less than
/* There are two other operators to help you compare two 
values and determine if a value is greater than (>) or less 
than (<) another value. You know these from mathematics:
*/

  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);

  print(
      "first answer is : $isOneLessThanTwo, second answer is: $isOneGreaterThanTwo");
  print(20 >= 1); // true
  print(12 >= 2); // true

*/

// Boolean logic
/*
// AND opertor
//In Dart, the operator for Boolean AND is written &&, used
//like so it will perform logical and operation

  const isSunny = true;
  const rainFinished = true;
  const willGoOutside = isSunny && rainFinished;
  print(willGoOutside);
*/

/*
// OR operator

//In Dart, the operator for Boolean OR is written ||, used like
//so: it will perform logical or between both operands

  const willTravelTOUS = true;
  const canFindPhoto = false;
  const canDrawplatypus = willTravelTOUS || canFindPhoto;
  print(canDrawplatypus);
*/

/*
// operator precedence
// e.g.
  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;
  //Each of these tests two separate conditions, combining them
// with either AND or OR.
  const ans = 3 > 4 && 1 < 2 || 1 < 4;
  // operator precedence comes in to picture.

  /// highest precedence  = !
  /// second highest = >= > <= <
  /// then == !=
  /// then && and last ||

// Overriding precedence with parentheses
  3 > 4 && (1 < 2 || 1 < 4); // false
  (3 > 4 && 1 < 2) || 1 < 4; // true

*/

//String equality
/*
//can compare strings using the standard equality
// operator, ==
  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print(dogEqualsCat);
*/

// Mini-Exercise
/*
//1)
  const myAge = 19;
  const isTeenager = (myAge <= 19 && myAge >= 13);
  print(isTeenager);

// 2)

  const maryAge = 30;
  const bothTeenages =
      (myAge <= 19 && myAge >= 13) && (maryAge <= 19 && maryAge >= 13);
  print(bothTeenages);

// 3)
  const reader = "sahil";
  const ray = "Ray wenderlich";
  const bool rayIsReader = reader == ray;
  print(rayIsReader);

*/

/*
// The if Statement
//The first and most common way of controlling the flow of a
// program is through the use of an if statement

  // the condition inside parentheses is evaluated and based on boolean result if condition will get executed.
  // condition becomes yes, then only print statement will get executed.
  if (3 > 1) {
    print("Yes, 3 is greater than 1");
  }

// Else Clause
//You can extend an if statement to provide code to run in the
// event that the condition turns out to be false.

  // the condition inside parentheses is evaluated and based on boolean result if condition will get executed.
  // if consition true then if clause otherwise else claues.
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }
*/
  //Else-if chains
  //You can go even further with if statements. Sometimes you
// want to check one condition, and then check another
// condition if the first condition isn’t true.

//e.g.

/*
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);
  //we can add an else clause at the end to handle the case
// where none of the conditions are true
*/

/*
//Variable scope
/* if statements introduce a new concept called . Scope is 
the extent to which a variable can be seen throughout your 
code. Dart uses curly braces as the boundary markers in 
determining a variable’s scope. If you define a variable inside 
a pair of curly braces, then you’re not allowed to use that 
variable outside of those braces.*/

  const global = 'Hello, world';
  void main() {
    const local = 'Hello, main';
    if (2 > 1) {
      const insideIf = 'Hello, anybody?';
      print(global);
      print(local);
      print(insideIf);
    }
    print(global);
    print(local);
    // not accessible outside if clause.
    //print(insideIf); // Not allowed!
  }

  //There are three variables: global, local and insideIf.
*/

//The ternary conditional operator
/*
// ternary condition is basically short form of if-else clause.
//syntax :(condition) ? valueIfTrue : valueIfFalse;
  const score = 83;
  const message = (score >= 60) ? 'You passed' : 'You failed';
  print(message);
*/
  //Mini-exercises
/*
  //1)
  const myAge = 19;
  if (myAge >= 13 && myAge <= 19) {
    print("Teenager");
  } else {
    print("Not a teenager");
  }

  //2)
  (myAge >= 13 && myAge <= 19) ? print("Teenager") : print("Not a Teenager");
*/

// Switch Statements

/*
//An alternate way to handle control flow, especially for
// multiple conditions, is with a switch statement.

  const number = 2;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    default:
      print('something else');
  }

  // same way switching in string is also possible by replacing case "two" in case statements.

  */

// Enumerated types
// also known as , play especially well
// with switch statements.
//Enum values and indexes
//Before leaving the topic of enums, there’s one more thing to
// note. If you try to print an enum
//Avoiding the overuse of switch statements

/*Switch statements, or long else-if chains, can be a 
convenient way to handle a long list of conditions. If you’re
a beginning programmer, go ahead and use them; they’re
easy to use and understand*/

// mini exercise

  const state = AudioState.playing;
  print(state);
}
