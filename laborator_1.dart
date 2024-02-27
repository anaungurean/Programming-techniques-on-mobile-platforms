bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

exercise1() {
  // 1. Write and compile a dart program that prints the first 100 prime numbers.
  int count = 0;
  int number = 2;
  List<int> primesNumber = [];
  while (count < 100) {
    if (isPrime(number)) {
      primesNumber.add(number);
      count++;
    }
    number++;
  }
  print("First 100 prime numbers are: ");
  print(primesNumber);
}

exercise2(var phrase) {
  // 2. Write a DART program that extracts all words from a phrase. A word is considered to be formed out of letters and numbers.
  //Words are separated one from another with one or multiple spaces or punctuation marks.

  List<String> punctuationMarks = [',', '.', ';', '?', '!'];

  for (var mark in punctuationMarks) {
    phrase = phrase.replaceAll(mark, ' ');
  }
  var words = phrase.split(" ");

  for (var word in words) {
    if (word != "") print(word);
  }
}

exercise3(var text) {
  // 3.Write a dart function that extracts all the numbers from a text.
  // The numbers can be double or int. The program will return the sum of the extracted numbers.

  double sum = 0;
  List<String> punctuationMarks = [',', ';', '?', '!'];

  for (var mark in punctuationMarks) {
    text = text.replaceAll(mark, ' ');
  }
  var words = text.split(" ");

  for (var word in words) {
    if (word.endsWith(".")) {
      word = word.substring(0, word.length - 1);
    }
    print(word);
    if (double.tryParse(word) != null) {
      print("Number: $word");
      sum += double.parse(word);
    }
  }
  print("The sum of the numbers is: $sum");
  return sum;
}

exercise4(var s) {
  // 4. Write a dart function that converts a string of characters written in UpperCamelCase into lowercase_with_underscore.
  var result = "";
  result += s[0].toLowerCase();

  for (var i = 1; i < s.length; i++) {
    if (s[i] == s[i].toUpperCase()) {
      result += "_";
      result += s[i].toLowerCase();
    } else {
      result += s[i];
    }
  }
  print(result);
}

void main() {
  exercise1();
  exercise2("Hello, World! I am Ana. I am 21 years old. How are you?");
  exercise3(
      "Hello, World! I am Ana. I am 21 years old and I have been studying computer science for 3.3 years 2.1883. How are you?");
  exercise4("HelloWorld");
}
