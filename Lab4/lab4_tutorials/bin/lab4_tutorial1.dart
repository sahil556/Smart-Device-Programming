class Myclass {
  var myProperty = "Hello, Dart!";
  // constructor - special method in class
  Myclass();
  void myMethod() {
    print(myProperty);
  }
}

class Sphere {
  final num _radius;
  static const PiValue = 3.14159;
  const Sphere({num radius = 0.0})
      : assert(radius >= 0),
        _radius = radius;
  num getVolume() {
    num answer = (_radius * _radius * _radius * 4);
    answer *= PiValue;

    answer /= 3;
    return answer;
  }

  num getSurface() {
    num answer = (_radius * _radius * 4 * PiValue);
    return answer;
  }
}

class Student {
  final String fname, lname;
  int grade;
  Student(String firstname, String lastname, int grade)
      : this.fname = firstname,
        this.lname = lastname,
        this.grade = grade;

  void PrintStudent() {
    print("${this.fname} has scored ${this.grade} grade.");
  }
}

class User {
  int id = 0;
  String name = "";
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

void main() {
// classes
// Dart classes
// definition : class is a userdefined datatype that is template of properties and methods
// used to combine data and functions inside a single structure
/*
Myclass obj = new Myclass();
obj.myMethod();
*/
// The optional keyword new
  final user = new User();
  print(user.name);
  // assigning value ton properties

  // dot notation

  user.name = "Ray";
  user.id = 75;
  // print(user);
  //Adding methods

  // understand
  /// Challenge 1: Bert and Ernie
  ///
  /// Create a `Student` class with final `firstName` and `lastName`
  /// `String` properties and a variable `grade` as an `int` property.
  /// Add a constructor to the class that initializes all the properties.
  /// Add a method to the class that nicely formats a `Student` for printing.
  /// Use the class to create students `bert` and `ernie` with grades of 95 and
  /// 85, respectively.

  Student Bert = new Student("Bert", "root", 95);
  Student Ernie = new Student("Ernie", "boot", 85);
  Bert.PrintStudent();
  Ernie.PrintStudent();

  /// Challenge 2: Spheres
  ///
  /// Create a `Sphere` class with a `const` constructor that takes a positive
  /// length `radius` as a named parameter. Add getters for the the volume and
  /// surface area but none for the radius. Don't use the `dart:math` package
  /// but store your own version of `pi` as a `static` constant. Use your class
  /// to find the volume and surface area of a sphere with a radius of 12.

  const sphere = Sphere(radius: 12);
  print(sphere.getVolume());
  print(sphere.getSurface());
}

/// Dart classes
/// Dart classes: Mini-exercise 1
/// 
/// Create a class called `Password` and give it a string property 
/// called `value`.
// class Password {
//   String value = '';
// }

/// Dart classes: Mini-exercise 2
/// 
/// Override the `toString` method of `Password` so that it prints `value`.
// class Password {
//   String value = '';
//
//   @override
//   String toString() {
//     return value;
//   }
// }

/// Dart classes: Mini-exercise 3
/// 
/// Add a method to `Password` called `isValid` that returns `true` only 
/// if the length of `value` is greater than `8`.
// class Password {
//   String value = '';
//
//   bool isValid() {
//     return value.length > 8;
//   }
//
//   @override
//   String toString() {
//     return value;
//   }
// }


/// Constructors
/// Constructors: Mini-exercise 1
/// 
/// Given the following class:
/// 
/// ```
/// class Password {
///   String value = '';
/// }
/// ```
/// 
/// Make `value` a `final` variable, but not private.
// class Password {
//   final value = '';
// }

/// Constructors: Mini-exercise 2
/// 
/// Add a `const` constructor as the only way to initialize a 
/// `Password` object.
// class Password {
//   const Password(this.value);
//   final String value;
// }