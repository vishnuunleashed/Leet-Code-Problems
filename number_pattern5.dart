import 'dart:io';

void main() {
  // String name = stdin.readLineSync()!;
  // int limit = int.parse(name);

  /* 
    print the following pattern
              1 
            2 1 2 
          3 2 1 2 3 
        4 3 2 1 2 3 4 
      5 4 3 2 1 2 3 4 5 
    
  */
  int limit = 6;
for (int i = 0; i < limit; i++) {
    String stars = '';
    for (int k = i; k < limit; k++) {
      stars += '  ';
    }
    for (int j = i; j > 0; j--) {
     
      stars += '$j ';
    }
    for (int k = limit; k > i; k--) {
      stars += '';
    }
    for (int j = 2; j <= i; j++) {
      stars += '$j ';
    }
    print(stars);
  }
}
