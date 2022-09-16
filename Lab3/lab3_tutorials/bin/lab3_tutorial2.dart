// import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;

void main() {
  // functions
/*
  //function is one smaller task, or sometimes collection of several smaller, related tasks that we can use
  // in conjuction with other functions to accomplish larger task.

  // function basics
  // input => function => output

  // Dont repeat yourself
  //e.g. small, useful piece of code that we have repeated in multiple places in program.
  // first problem in this is: we are duplicating effort by same code at multiple times
  //second problem is : if we need to change the logic in that bit of code then, we need to trace all  those instances of code.

  // functions are one of the main solution to the duplication problem

  // Anatomy of a Dart function
  String compliment(int number) {
    return '$number is a very nice number';
  }
  // function consisits of a return type, a name , a parameterlist in parentheses and a body enclosed in braces

  // return type: this comes firstl it tells you what the type will be of the function output. it can be string, num, void

  // function name : we can give any name to function, but should follow the lowercamelcase naming convention.

  // parameters: it is a input to the functions. they go inside the parentheses after function name.parameters can be more than one
  // like: typename first and than followed by name => just like variable name
  // should be in lowercamelcase

  //return value.
  //it is a functions output and it should match with return type.
  // above function returns a string value by using return keyword
  // if return type is void then dont return anything

  // return type, function name and parameters are collectively called function signature
  // code between braces is known as the function body

  const input = 12;
  // calls function compliment with passing argument input to it
  final output = compliment(input);
  print(output);
  //dart programs start with main functions
  // since main doesnt return any value its return type is void.

  // dart supports top level functions which are functions that are not inside a class or any another function.
  //when function is inside class,it's called a method

  // we call a function by writing its name and providing the argument --> it is value we provide inside the parentheses as the parameter to the function
  // parameter => name and type that we define for our function
  // argument => it is actual value that we pass in
  // parameter is abstract while argument is concrete.

  // using multiple parameters
  // more than one parameters should be separated by comms
  //i.e.
  void helloPerson(String person, String pet) {
    print("hello, $person, and you fury friend, $pet!");
  }
  // parameters are called positional param.. because we have to supply the argument in same order;
*/

  //Making parameters optional
/*
  //If you don’t have exactly the right number of parameters, the
  //
  //compiler will complain to you:
  //helloPerson();

  // but it is possible to have optional parameters in a dart functions.

  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return "$title $first $last";
    } else {
      return "$first $last";
    }
  }

  print(fullName("sahil", "Nandaniya", "student"));
  print(fullName("sahil", "Nandaniya"));
  // function correctly handles the optional title.
  // technically ? is not return after type, but its a integral part of the type, the nullable String?
*/

  // Providing defalut values
  // default value for optional parameter is null
  /*bool withinTolerance(int val, [int min = 0, int max = 10]) {
    return min <= val && max >= val;
  }
*/

  /// There are three parameters here, two of which are optional:
  ///min and max. If you don’t specify a value for them, then min
  ///will be 0 and max will be 10.

  //withinTolerance(5); // true
  //withinTolerance(15, 5, 15); // true

  //Since the function uses positional parameters, the provided
  //arguments must follow the order you defined the
  //parameters

  //Naming parameters
/*
  // dart allows us to use named parameters to make meaning of the parameters/
  bool withintoTolerance1(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  ///min and max are surrounded by braces, which means you must
  ///use the parameter names when you provide their argument values to the function
  withintoTolerance1(9, min: 7, max: 11);
  withintoTolerance1(9, max: 11, min: 7);
  withintoTolerance1(9, max: 11);
  // named parameters are optional by default
  // to avoid any problem -> What you want is to make value required instead of
  // optional

  bool withinTolerance2({
    required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  print(withinTolerance2(value: 5));
  //Using named parameters makes your code more readable
*/
  //Writing good functions
  // Avoiding side effects
  //Printing something to the console is a side effect, because
  // changing global data inside functions
  // it’s affecting the world outside of the function
  // function that always return the same output for any given input ==> pure functions

  // Doing one thing only
  /*
  If a function is too big, or 
contains unrelated parts, consider breaking it into smaller 
functions
s usually a 
good clue that you should break your function up into 
smaller functions. In clean coding, this is known as the
==> known as single responsibility principle

*/

// function names:
//give your functions names that describe
// exactly what they do
//Use noun phrases for pure functions
// use averageTemperature
// instead of getAverageTemperature

//Use verb phrases for functions with side effects. For example,
// updateDatabase or printHello.
// to emphasize that the function does a lot of work. For example
// calculateFibonacci

// Mini -exercise:
//1)
  youAreWonderful(name) {
    return "You're wonderful,$name";
  }

  print(youAreWonderful("Bob"));
//2)
  // String youAreWonderful(String name, int numberPeople) {
  //   return "You're wonderful,$name. $numberPeople people think so.";
  // }

  // print(youAreWonderful("Bob", 10));
//3)
  // String youAreWonderful({required String name, int numberPeople = 30}) {
  //   return "You're wonderful,$name. $numberPeople people think so.";
  // }

  // print(youAreWonderful(name: "Bob", numberPeople: 10));

//Anonymous functions
// all functions defined above are named functions
// but not every function needs a name
// If you remove the return type and the function name, then what you have left
// is an anonymous function
//return type will be inferred from the return value of the
// function body

// first class citizens
/* you can treat them like any other othertype, assigning functions 
as values to variables and even passing functions around as 
parameters or returning them from other function
*/
/*
// Assiging functions to variables
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };
  // One reason that you need anonymous functions is that you
// can’t assign a named function to a variable:

// PAssing function to function
//void namedFunction(Function anonymousFunction) {
// function body
//}
*/
//Returning functions from functions
/*
Function namedFunction() { return 
() {
print('hello');
};
}
*/
//Functions that return functions, or that accept them as
// parameters, are called .

// Using anonymous functions
  // final multiply = (int a, int b) {
  //   return a * b;
  // };
  // print(multiply(1, 3));

  // Retuning a function:
/*
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  //Going back to the machine-that-makes-a-machine analogy,
  // passing 3 into applyMultiplier was like setting a dial on the
  // first machine
  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));

  // Anonymous functions in foreach loops
  // for each loop iterates over a collection, it's a usecase of anonymous function.
  const numbers = [1, 2, 3];

  numbers.forEach((element) {
    final tripled = element * 3;
    print(tripled);
  });
  */

  //closure and scope
  /*
  //Anonymous functions in Dart act as what are known as closure
  // closure means close around
  // scope in dart is specified by a pair of curly braces
  //e.g. function bodies and bodies of loops

  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
      // returns closes over the multiplier value that is passed in as a parameter to applymultiplier
    };
  }

  // anonymously function act as a closure and has access to counter
  // example
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };
  incrementCounter();
  print(counter);
  
  // we can use closure as return value
  // if there is one variable called var1 in outside scope of closure and that function return that closure to two different function variable
  // then two different copies of that variable  called var1 would be created.
*/
  // Mini-exercise:
  /*
  //1)
  final wonderful = (String name) {
    return "You're wonderful,$name";
  };
  print(wonderful("hardik"));

  //2)
  const people = ["chris", "tiffani", "pablo"];
  people.forEach((element) {
    var str = wonderful(element);
    print(str);
  });

  */
  // Arrow function
/*
  // function whose body is only one line
  int add(int a, int b) => a + b;
  //(parameters) => expression

  // REfactoring example 1 :
  //final multiply = (int a, int b) {
  //return a * b;
  //};
  final multiply = (int a, int b) => a * b;
  print(multiply(2, 3));

  // Refactoring Example 2:
  /*Function applyMultiplier(num multiplier) { 
  return (num value) {
  return value * multiplier;
  };
  }
 */
  Function applyMultiplier(num multiplier) {
    return (num value) => value * multiplier;
  }
*/
  // Mini exercise
  // challenges:
  //1)
/*
  bool isprime(int number) {
    for (int i = 2; i < number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  bool ans = isprime(11);
  print("11 is prime: $ans ");
*/
  //Challenge 2: Can you repeat that?
/*
  int repeatTask(int times, int input, Function task) {
    ///recursively can be done
    int temp = input;
    for (int i = 0; i < times; i++) {
      temp = task(temp);
    }
    return temp;
  }

  int number = repeatTask(4, 2, (var input) {
    return input * input;
  });
  print(number);
*/
//3)
//challenge Darts and arrows
/*
  int repeatTask(int times, int input, Function task) {
    ///recursively can be done
    int temp = input;
    for (int i = 0; i < times; i++) {
      temp = task(temp);
    }
    return temp;
  }

  int number = repeatTask(4, 2, (var input) => input * input);
  print(number);
*/
}
