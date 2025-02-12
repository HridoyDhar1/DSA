import 'dart:collection';

int shortestWordPath(String start, String end, Set<String> dictionary) {
  if (!dictionary.contains(end)) return -1;

  Queue<MapEntry<String, int>> queue = Queue();
  queue.add(MapEntry(start, 1));
  Set<String> visited = {start};

  while (queue.isNotEmpty) {
    var entry = queue.removeFirst();
    String word = entry.key;
    int steps = entry.value;

    if (word == end) return steps;

    for (String neighbor in getNeighbors(word, dictionary)) {
      if (!visited.contains(neighbor)) {
        visited.add(neighbor);
        queue.add(MapEntry(neighbor, steps + 1));
      }
    }
  }

  return -1; // No valid path found
}

List<String> getNeighbors(String word, Set<String> dictionary) {
  List<String> neighbors = [];
  List<String> alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');

  for (int i = 0; i < word.length; i++) {
    for (String letter in alphabet) {
      if (letter != word[i]) {
        String newWord = word.substring(0, i) + letter + word.substring(i + 1);
        if (dictionary.contains(newWord)) {
          neighbors.add(newWord);
        }
      }
    }
  }

  return neighbors;
}

void main() {
  Set<String> dictionary = {"cab", "cat", "bat"};
  int result = shortestWordPath("cab", "bat", dictionary);
  print(result); // Output: 2
}
