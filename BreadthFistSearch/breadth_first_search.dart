int shortestPath() {
  List<String> path = ["cab", "cat", "bat","Dog"];
  return path.length - 1; // Steps needed
}

void main() {
  print(shortestPath()); // Output: 2
}
