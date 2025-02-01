// How long will simple & binary search take to find the target if the list contains 1 billion elements?


void main() {
  int numElements = 1000000000; 
  int timePerElement = 1; 

  // Time for Simple Search (Linear Search)
  int timeSimpleSearch = numElements * timePerElement;
  print("Time for Simple Search: ${timeSimpleSearch} ms");

  // Time for Binary Search
  
  int binarySearchSteps=0;
  int elementRemaining=numElements;
  while(elementRemaining>1){
    elementRemaining=(elementRemaining/2).round();
    binarySearchSteps++;
  }
  int timeBinarySearch = binarySearchSteps * timePerElement;
  print("Time for Binary Search: ${timeBinarySearch} ms");
}
