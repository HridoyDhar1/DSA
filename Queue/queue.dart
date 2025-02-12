import 'dart:collection';

void main() {
  Queue<int> queue = Queue<int>();

  // Adding elements to the queue (enqueue)
  queue.add(10);
  queue.add(20);
  queue.add(30);
  
  print("Queue after adding elements: $queue"); // Output: Queue after adding elements: [10, 20, 30]

  // Removing elements from the queue (dequeue)
  int firstElement = queue.removeFirst();
  print("Removed: $firstElement"); // Output: Removed: 10

  print("Queue after removing an element: $queue"); // Output: Queue after removing an element: [20, 30]
}
