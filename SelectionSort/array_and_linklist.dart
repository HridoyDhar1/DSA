int binarySearch(List<String> usernames, String target) {
  int left = 0, right = usernames.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2; // Avoids overflow ~/ is used for integer division (avoids floating point numbers).
    if (usernames[mid] == target) {
      return mid; // Found the username
    } else if (usernames[mid].compareTo(target) < 0) {
      left = mid + 1; // Search right half
    } else {
      right = mid - 1; // Search left half
    }
  }
  return -1; // Username not found
}

void main() {
  List<String> usernames = ["alice", "bob", "charlie", "david", "eve"];
  usernames.sort(); // Ensure list is sorted for binary search

  String target = "charlie";
  int index = binarySearch(usernames, target);

  if (index != -1) {
    print("Username '$target' found at index $index.");
  } else {
    print("Username '$target' not found.");
  }
}
