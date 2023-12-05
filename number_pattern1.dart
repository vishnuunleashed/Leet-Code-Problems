import 'dart:io';

void main(){
  // String name = stdin.readLineSync()!;
  // int limit = int.parse(name);

  /* 
    print the following pattern
        1
       1 2
      1 2 3
     1 2 3 4
    1 2 3 4 5 
    
  */
  int limit = 6;
  for(int i = 1; i < limit; i++){
    String stars = '';
    for(int k = i;k<limit;k++){
      stars += ' ';
    }
    for(int j = 1; j<=i; j++){
      stars += '$j ';
    }
    print(stars);
  }

}