List<int>selectionSort(List<int>numbers){
  int n=numbers.length;
  for(int i=0;i<n-1;i++){
    int minIndex=i;
    for(int j=i+1;j<n;j++){
      if(numbers[j]<numbers[minIndex]){
        minIndex=j;
      }
    }
    int tem=numbers[i];
    numbers[i]=numbers[minIndex];
    numbers[minIndex]=tem;
  }
  return numbers;
}
void main(){
  List<int>numbers=[3,2,54,13,64,34,675];
  List<int>sorted=selectionSort(numbers);
  print("Sorted list: $sorted");
}