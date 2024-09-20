import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  // String operations
  String str1 = "Hello, ";
  String str2 = "world!";
  String concatenatedStr = str1 + str2;
  print("Concatenated string: $concatenatedStr");

  String interpolatedStr = "The length of '$str1' is ${str1.length}";
  print(interpolatedStr);

  String substring = str1.substring(0, 5);
  print("Substring: $substring");

  String uppercaseStr = str1.toUpperCase();
  print("Uppercase: $uppercaseStr");

  String lowercaseStr = str2.toLowerCase();
  print("Lowercase: $lowercaseStr");

  String reversedStr = str1.split('').reversed.join('');
  print("Reversed string: $reversedStr");

  // Collections
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.remove(3);
  for (int number in numbers) {
    print(number);
  }

  Set<String> fruits = {"apple", "banana", "orange"};
  fruits.add("grape");
  fruits.remove("banana");
  for (String fruit in fruits) {
    print(fruit);
  }

  Map<String, int> ages = {"Alice": 25, "Bob": 30};
  ages["Charlie"] = 35;
  ages.remove("Bob");
  for (MapEntry<String, int> entry in ages.entries) {
    print("${entry.key}: ${entry.value}");
  }

  // File handling
  try {
    File inputFile = File('input.txt');
    String content = inputFile.readAsStringSync();
    print("File content: $content");

    File outputFile = File('output.txt');
    outputFile.writeAsStringSync("This is new content.");
    print("Data written to output file.");
  } catch (e) {
    print("Error: $e");
  }

  // Date and time
  DateTime now = DateTime.now();
  print("Current date and time: $now");

  DateTime formattedDate = now.format(DateFormat('yyyy-MM-dd HH:mm:ss'));
  print("Formatted date: $formattedDate");

  DateTime parsedDate = DateFormat('yyyy-MM-dd').parse("2024-09-19");
  print("Parsed date: $parsedDate");

  DateTime newDate = now.add(Duration(days: 10));
  print("Date after 10 days: $newDate");

  Duration difference = now.difference(parsedDate);
  print("Difference in days: ${difference.inDays}");
}