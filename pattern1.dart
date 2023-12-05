import 'dart:io';

void main(){
  // String name = stdin.readLineSync()!;
  // int limit = int.parse(name);

  /* 
    print the following pattern
    *
    **
    ***
    ****
    ***** 
    
  */
  for(int i = 0; i < 5; i++){
    String stars = '';
    for(int j = 0; j<=i; j++){
      stars += '*';
    }
    print(stars);
  }

}