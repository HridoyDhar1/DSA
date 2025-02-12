import 'dart:math';

// Function to generate the first 26 prime numbers
List<int> generatePrimes(int count) {
  List<int> primes = [];
  int num = 2;
  while (primes.length < count) {
    if (isPrime(num)) {
      primes.add(num);
    }
    num++;
  }
  return primes;
}

// Function to check if a number is prime
bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= sqrt(num).toInt(); i++) {
    if (num % i == 0) return false;
  }
  return true;
}

// Function to compute the hash index of a string
int computeHash(String input, int hashSize) {
  List<int> primeMapping = generatePrimes(26);
  int sum = 0;
  for (int i = 0; i < input.length; i++) {
    int charIndex = input[i].toLowerCase().codeUnitAt(0) - 'a'.codeUnitAt(0);
    if (charIndex >= 0 && charIndex < 26) {
      sum += primeMapping[charIndex];
    }
  }
  return sum % hashSize;
}

void main() {
  String input = "bag";
  int hashSize = 10;
  int hashIndex = computeHash(input, hashSize);
  print("Hash index for '$input': $hashIndex");
  
  // Phonebook with names and phone numbers
  Map<String, String> phonebook = {
    "Esther": "123-456-7890",
    "Ben": "234-567-8901",
    "Bob": "345-678-9012",
    "Dan": "456-789-0123"
  };
  
  print("Phonebook: $phonebook");

  // Mapping from battery size to power
  Map<String, int> batteryPower = {
    "A": 3000,
    "AA": 2500,
    "AAA": 1200,
    "AAAA": 800
  };
  
  print("Battery Power: $batteryPower");

  // Mapping from book titles to authors
  Map<String, String> books = {
    "Maus": "Art Spiegelman",
    "Fun Home": "Alison Bechdel",
    "Watchmen": "Alan Moore"
  };
  
  print("Books: $books");
}
