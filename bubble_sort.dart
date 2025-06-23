void main() {
 
  List<int> array = [345,576,234,789,234,1,3];

  array = bubbleSort(array,array.length);
  print(array);
}


List<int> bubbleSort(List<int> array,int n){
 
  for(int i = 0; i < n-1; i++){
 
    for(int j = 0; j < (n-1)-i; j++){
      if(array[j] > array[j+1]){
        int temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
        }
    }
  }
  return array;
}
