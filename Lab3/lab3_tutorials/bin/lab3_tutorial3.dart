// import 'package:lab3_tutorial3/lab3_tutorial3.dart' as lab3_tutorial3;

void main() {
  /*
  // dart doesnt have character data type
  const letter = "a";
  // here type of letter variable is string, not charater
  //dart strings are a collection of UTF-16 code units. it is a way
  // to encode unicode values by using 16 bit numbers.
  var salutation = "Hello!";
  // its printing [72, 101, 108, 108, 111, 33]
  print(salutation.codeUnits);
  */
/*
  // these UTF-16 code units have the same value as unicode code points for most of the characters.
  // 16 bit only gives us 65536 combinations
  // UTF-16 has a special way of encoding code points higher
// than 65,536 by using two code units called .
  const dart = '🎯';
  print(dart.codeUnits);
  // The code point for 🎯 is 127919, but the surrogate pair for
// that in UTF-16 is 55356 and 57263
  // we dont want to mess with surrogate pairs
  //we want just get unicode code points directly
  // for that
  print(dart.runes);
  */

/*
  // Unicode grapheme clusters
  //Unfortunately, language is messy and so is Unicode. Have a
// look at this example:
  const flag = "🎁";
  print(flag.runes);

  // if there is country - mongolian flag than ans would be (127474, 127475) or something
  // still two unicode points
  //Unicode doesn’t create a new code point every time there is a
// new country flag
//It uses a pair of code points called regional indicator symbols
/* 127474 is the code 
for the regional indicator symbol letter M, and 127475 is the 
code for the regional indicator symbol letter N. MN represents 
Mongolia*/
*/
/*
  const family = '👷‍♀️👩‍🦳👨‍🚀';
  //(128119, 8205, 9792, 65039, 128105, 8205, 129459, 128104, 8205, 128640)
  print(family.runes);
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);

  // family.length is equal to finding number of UTF-16 code units
  // there are surrogate pair for each 3 person is 6 and 3 times ZWJ 3 times so total 9 + 6 = 15
  // however emoji is only 3 there but length is 15

  //When a string with multiple code points looks like a single character, this is known as a USER PERCEIVED CHARACTER
  //in technical term it is called a Unicode extended grapheme cluster
  */

  // Adding the charater package
  // package can be added successfully
  // importing shows error : package:characters/characters.dart
}
