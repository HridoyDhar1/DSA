int findSmallest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty"); // Handle empty lists
  }

  int smallest = numbers[0]; // Assume first element is smallest

  for (int num in numbers) {
    if (num < smallest) {
      smallest = num; // Update if a smaller element is found
    }
  }

  return smallest;
}

void main() {
  List<int> numbers = [42, 17, 56, 3, 89, 12];
  int smallestNumber = findSmallest(numbers);
  print("The smallest number is: $smallestNumber");
}
