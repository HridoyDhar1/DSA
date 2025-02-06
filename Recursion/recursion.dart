class Box {
  bool hasKey;
  List<Box> innerBoxes;

  Box({this.hasKey = false, this.innerBoxes = const []});
}

bool findKey(Box box) {
  print("Opening a box...");

  // Check if this box has the key
  if (box.hasKey) {
    print("Found the key!");
    return true;
  }

  // If there are smaller boxes, search inside them
  for (Box innerBox in box.innerBoxes) {
    if (findKey(innerBox)) {
      return true; // Stop searching once the key is found
    }
  }

  return false; // Key not found
}

void main() {
  // Create a nested box structure
  Box box1 = Box();
  Box box2 = Box(innerBoxes: [Box(), Box(hasKey: true)]); // Key is in this box
  Box mainBox = Box(innerBoxes: [box1, box2]);

  bool result = findKey(mainBox);
  if (!result) {
    print("Key not found");
  }
}
