import 'dart:io';

void main() {
  // String name = stdin.readLineSync()!;
  // int limit = int.parse(name);

  /* 
    print the following pattern
         1
        2 3
       4 5 6 
      7 8 9 10
    11 12 13 14 15
    
  */
  int limit = 6;
  int number = 0;
  for (int i = 0; i < limit; i++) {
    String stars = '';
    for (int k = i; k < limit; k++) {
      stars += ' ';
    }
    for (int j = 1; j <= i; j++) {
      number += 1;
      stars += '$number ';
    }
    print(stars);
  }
}
