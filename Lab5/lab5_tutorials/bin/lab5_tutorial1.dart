const paragraphOfText =
    "There are different types of secrets. She had held onto plenty of them during her life, but this one was different. She found herself holding onto the worst type. It was the type of secret that could gnaw away at your insides if you didn't tell someone about it, but it could end up getting you killed if you did.";

void tutorialChallenge1() {
  /// tutorialChallenge 1: A unique request
  ///
  /// Write a function that takes a paragraph of text and returns a
  /// collection of unique String characters that the text contains.
  Set<String> uniqueCodePoints(String text) {
    return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
  }

  print(uniqueCodePoints(paragraphOfText));
}

void tutorialChallenge2() {
  /// tutorialChallenge 2: Counting on you
  ///
  /// Repeat tutorialChallenge 1 but this time have the function return a
  /// collection that contains the frequency count of every unique
  /// character.
  Map<String, int> characterFrequencyMap(String text) {
    final characterFrequencyMap = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequencyMap[character] ?? 0;
      characterFrequencyMap[character] = frequency + 1;
    }
    return characterFrequencyMap;
  }

  print(characterFrequencyMap(paragraphOfText));
}

void tutorialChallenge3() {
  /// tutorialChallenge 3: Mapping users
  ///
  /// Create a class called `User` with properties for `id` and `name`.
  /// Make a `List` with three users, specifying any appropriate names
  /// and IDs you like. Then write a function that converts your user
  /// list to a list of maps whose keys are `id` and `name`.
  final users = [
    User(1, 'Brian'),
    User(2, 'Chris'),
    User(3, 'Pablo'),
  ];

  // Note: You'll find many APIs use `dynamic` instead of `Object` when
  // converting a custom object to a map. Either one works, though using
  // `Object` when possible allows you to keep type safety.
  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}

// Driver Function - main function

void main() {
  /// Lists: Mini-exercise 1
  ///
  /// Create an empty list of type `String`. Call it `months`. Use
  /// the `add` method to add the names of the twelve months.
  final months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);

  listsMiniExercise2();
  listsMiniExercise3();

  mapsMiniExercise1();
  mapsMiniExercise2();
  mapsMiniExercise3();

  higherOrderMethodsMiniExercise1();
  higherOrderMethodsMiniExercise2();

  // tutorialChallengestutorial1 starts from here
  tutorialChallenge1();
  tutorialChallenge2();
  tutorialChallenge3();
}

void listsMiniExercise2() {
  /// Lists: Mini-exercise 2
  ///
  /// Make an immutable list with the same elements as in Mini-exercise 1.
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  print(months);
}

void listsMiniExercise3() {
  /// Lists: Mini-exercise 3
  ///
  /// Use collection `for` to create a new list with the month names in
  /// all uppercase.

  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final bigMonths = [for (var month in months) month.toUpperCase()];
  print(bigMonths);
}

void mapsMiniExercise1() {
  /// Maps: Mini-exercise 1
  ///
  /// Create a map with the following keys: `name`, `profession`, `country`
  /// and `city`. For the values, add your own information.

  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'China',
    'city': 'Beijing',
  };
  print(myMap);
}

void mapsMiniExercise2() {
  /// Maps: Mini-exercise 2
  ///
  /// You suddenly decide to move to Toronto, Canada. Programmatically update
  /// the values for `country` and `city`.

  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'China',
    'city': 'Beijing',
  };
  myMap['country'] = 'Canada';
  myMap['city'] = 'Toronto';
  print(myMap);
}

void mapsMiniExercise3() {
  /// Maps: Mini-exercise 3
  ///
  /// Iterate over the map and print all the values.

  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'Canada',
    'city': 'Toronto',
  };

  for (var value in myMap.values) {
    print(value);
  }

  // Or:
  myMap.forEach((key, value) => print(value));
}

void higherOrderMethodsMiniExercise1() {
  /// Higher order methods: Mini-exercise 1
  ///
  /// Given the following exam scores:
  ///
  /// ```
  /// final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  /// ```
  ///
  /// Use `sort` to find the highest and lowest grades.
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final lowest = scores.first;
  final highest = scores.last;
  print(lowest);
  print(highest);
}

void higherOrderMethodsMiniExercise2() {
  /// Higher order methods: Mini-exercise 2
  ///
  /// Given the following exam scores:
  ///
  /// ```
  /// final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  /// ```
  ///
  /// Use `where` to find all the B grades, that is, all the scores
  /// between 80 and 90.

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  final bGrades = scores.where((score) => score >= 80 && score < 90);
  print(bGrades);
}
