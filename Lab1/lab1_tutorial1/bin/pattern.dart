import 'dart:io';

void main() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= 4 - i; j++) {
      stdout.write('${i + 1} ');
    }
    print(" ");
  }
}
