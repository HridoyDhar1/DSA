List<int> quickSort(List<int> arr) {
  // Base case: If the array has 1 or 0 elements, it's already sorted.
  if (arr.length <= 1) return arr;

  // Choose a pivot (middle element in this case)
  int pivot = arr[arr.length ~/ 2];

  // Partition the array into two sub-arrays: less than pivot and greater than pivot
  List<int> left = [];
  List<int> right = [];
  List<int> middle = [];

  // Compare each element to the pivot and sort them into the left or right lists
  for (var element in arr) {
    if (element < pivot) {
      left.add(element);
    } else if (element > pivot) {
      right.add(element);
    } else {
      middle.add(element); // Elements equal to pivot
    }
  }

  // Recursively sort the left and right sub-arrays, then combine the results
  return [...quickSort(left), ...middle, ...quickSort(right)];
}

void main() {
  List<int> numbers = [3, 2, 54, 13, 64, 34, 675];
  
  // Sorting the list using quicksort
  List<int> sortedNumbers = quickSort(numbers);
  
  print("Sorted array: $sortedNumbers");
}
