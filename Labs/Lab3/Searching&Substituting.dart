import 'dart:io';

void main() {
  print("SE-21014, SYEDA UMM E ABIHA RIZVI");

  List<String> strings = [
    'Hello, how are you today?',
    'Where are you going today?',
    'I am doing fine, thank you!',
    'What brings you here?'
  ];

  stdout.write("Define the specific substring to search for: ");
  String? substringToFind = stdin.readLineSync();

  if (substringToFind != null) {
    // Check if any string in the list contains the substringToFind
    bool substringFound = strings.any((element) => element.contains(substringToFind));

    if (substringFound) {
      stdout.write("Define a different substring to substitute the found substring: ");
      String replacementSubstring = stdin.readLineSync() ?? '';

      // Iterate through each string in the list
      for (int i = 0; i < strings.length; i++) {
        String originalString = strings[i];

        // Replace all occurrences of the specific substring
        String modifiedString = originalString.replaceAll(substringToFind, replacementSubstring);

        // Update the original string in the list
        strings[i] = modifiedString;
      }

      // Print the modified list of strings
      print(strings);
    } else {
      print("Substring '$substringToFind' is not found in any string.");
      return;
    }
  } else {
    print("Substring is not valid.");
    return;
  }
}
