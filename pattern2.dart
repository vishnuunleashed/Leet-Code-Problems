import 'dart:io';

void main(){
  // String name = stdin.readLineSync()!;
  // int limit = int.parse(name);

  /* 
    print the following pattern
        *
       * *
      * * *
     * * * *
    * * * * * 
    
  */
  int limit = 5;
  for(int i = 0; i < limit; i++){
    String stars = '';
    for(int k = i;k<limit;k++){
      stars += ' ';
    }
    for(int j = 0; j<=i; j++){
      stars += '* ';
    }
    print(stars);
  }

}