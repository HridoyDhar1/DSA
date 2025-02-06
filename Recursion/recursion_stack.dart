int factorial(int n) {
  print("Calling factorial($n)"); // Show function call
  if (n <= 1) {
    return 1; // Base case: factorial(1) = 1
  } else {
    return n * factorial(n - 1); // Recursive case
  }
}

void main() {
  int result = factorial(5); // Calculate 5!
  print("Factorial result: $result");
}
// How the Call Stack Works:
// When you call factorial(5), the system will start pushing each function call onto the call stack.
// Each recursive call waits for the next recursive call to return, and each new call is added to the call stack.
// Once it hits the base case (factorial(1)), the function begins returning, and each call is popped off the stack in reverse order.The call stack is a LIFO (Last In, First Out) structure, so the most recent function call is always the first one to finish.