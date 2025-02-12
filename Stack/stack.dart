void main() {
  List<int> stack = [];

  // Pushing elements onto the stack (push)
  stack.add(10);
  stack.add(20);
  stack.add(30);

  print("Stack after pushing elements: $stack"); // Output: [10, 20, 30]

  // Popping elements from the stack (pop)
  int lastElement = stack.removeLast();
  print("Popped: $lastElement"); // Output: Popped: 30

  print("Stack after popping an element: $stack"); // Output: [10, 20]
}
