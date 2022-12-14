import 'dart:math';

void main() {
  /// Null overview: Mini-exercise 1
  ///
  /// Create a `String?` variable called `profession`, but don't give it a value.
  /// Then you'll have `profession` `null`. :]

  String? profession;
  print(profession);

  /// Null overview: Mini-exercise 2
  ///
  /// Give `profession` a value of "basketball player".

  String? profession2;
  profession2 = 'basketball player';
  print(profession2);

  /// Null overview: Mini-exercise 3
  ///
  /// Write the following line and then hover your cursor over the variable
  /// name. What type does Dart infer `iLove` to be?
  ///
  /// ```
  /// const iLove = 'Dart';
  /// ```

  const iLove = 'Dart';
  print(iLove.runtimeType);
  // `iLove` is of type String (non-nullable).

  challenge1();
  challenge2();
}

/// Challenge 1: Random nothings
///
/// Write a function that randomly returns `42` or `null`. Assign
/// the return value of the function to an variable named `result` that
/// will never be `null`. Give `result` a default of `0` if the function
/// returns `null`.
void challenge1() {
  int? randomNothing() {
    final isTrue = Random().nextBool();
    return (isTrue) ? 42 : null;
  }

  final result = randomNothing() ?? 0;
  print(result);
}

/// Challenge 2: Naming customs
///
/// People around the world have different customs for giving names to
/// children. It would be difficult to create a data class to accurately
/// represent them all, but try it like this:
///
/// - Create a class called `Name` with `givenName` and `surname` properties.
/// - Some people write the surname last and some write it first. Add a
///   Boolean property called `surnameIsFirst` to keep track of this.
/// - Not everyone in the world has a surname.
/// - Add a `toString` method that prints the full name.

void challenge2() {
  final sahil = Name(givenName: 'sahil', surname: 'patel');
  final liMing = Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  final baatar = Name(givenName: 'Baatar');

  print(sahil);
  print(liMing);
  print(baatar);
}

class Name {
  Name({
    required this.givenName,
    this.surname,
    this.surnameIsFirst = false,
  });

  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    if (surnameIsFirst) {
      return '$surname $givenName';
    }
    return '$givenName $surname';
  }
}
