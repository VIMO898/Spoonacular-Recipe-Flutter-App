void main() {}

// 📘 EASY PROBLEMS

// 1. Reverse a String
String input1 = "flutter";

// Expected: 'rettulf'

// Solution 1
final input1List = input1.split('');
final reversedInput1 = input1List.reversed.join('');
// Solution 2
// String reversedInput1Str = '';
//   for (var i = (input1.length - 1); i >= 0; i--) {
//     reversedInput1Str += input1[i];
//   }

// 2. Check if a Number is Prime
int number2 = 17;
// Expected: true

// 3. Largest of Three Numbers
int a3 = 4, b3 = 9, c3 = 2;
// Expected: 9

// Solution
// final numbers = [a3, b3, c3];
// final greatestNumber = numbers.reduce(
//   (value, element) => value > element ? value : element,
// );

// 4. Fibonacci Series up to N Terms
int n4 = 6;
// Expected: [0, 1, 1, 2, 3, 5]
// Solution
// List<int> n4List = [0, 1];
//   for (var i = 0; i <= n4; i++) {
//     final numb = i + n4List.last;
//     n4List.add(numb);
//   }

// 5. Sum of List Elements
List<int> nums5 = [1, 2, 3, 4];
// Expected: 10
// Solution
// final sumsOfNumbs5 = nums5.reduce((value, element) => value + element);

// 6. Palindrome Check
String str6 = "level";
// Expected: true
// Solution
// final isPalindromChecked = level.split('').reversed.join('')

// 7. Count Vowels
String str7 = "Flutter Dev";
// Expected: 3
// Solution
// int vowelsCountInStr7 = 0;
//   final vowels = ['a', 'e', 'i', 'o', 'u'];
//   for (var i = 0; i < str7.length; i++) {
//     final lowerCasedLetter = str7[i].toLowerCase();
//     final contains = vowels.contains(lowerCasedLetter);
//     if (contains) vowelsCountInStr7++;
//   }

// 8. Factorial
int num8 = 5;
// Expected: 120
// Solution
// int factorial = 1;
//   for (var i = 1; i <= 5; i++) {
//     factorial = factorial * i;
//   }

// 9. Max and Min in List
List<int> nums9 = [10, 3, 5, 7];
// Expected: [10, 3]

// Solution
// final largestNumbInNums9 = nums9.reduce(
//     (value, element) => value > element ? value : element,
//   );
//   final smallestNumbInNums9 = nums9.reduce(
//     (value, element) => value < element ? value : element,
//   );
//   final minMaxOfNums9 = [largestNumbInNums9, smallestNumbInNums9];

// 10. Remove Duplicates
List<int> list10 = [1, 2, 2, 3];
// Expected: [1, 2, 3]
// Solution
// final nonDuplicatedList10 = list10.toSet().toList();

// 🟡 MEDIUM PROBLEMS

// 11. Stack Implementation
// Perform push(1), push(2), pop()
// Expected: 2

// 12. Sort List of Strings
List<String> words12 = ['banana', 'apple', 'cherry'];
// Expected: ['apple', 'banana', 'cherry']
// Solution:
// words12.sort();

// 13. First Non-Repeating Character
String str13 = "swiss";
// Expected: 'w'
// Solution
final str13List = str13.split('');
final nonRepeatingStr13 = [];
// for (var i = 0; i < str13.length; i++) {
//   final index = str13List.indexOf(str13List[i]);
//   final lastIndex = str13List.lastIndexOf(str13List[i]);
//   if (index == lastIndex) nonRepeatingStr13.add(str13List[index]);
// }
// final firstNonRepeatingStr = nonRepeatingStr13.isNotEmpty ? nonRepeatingStr13.first : null;

// 14. Group Words with Same Set of Characters
List<String> words14 = ['bat', 'tab', 'tap', 'pat'];
// Expected: {'abt': ['bat', 'tab'], 'apt': ['tap', 'pat']}

// 15. Check Anagram
String a15 = "listen", b15 = "silent";
// Expected: true
// Solution:
bool checkIfAnagram(String str1, String str2) {
  if (str1.length != str2.length) return false;
  final str1Split = str1.toLowerCase().split('');
  final str2Split = str2.toLowerCase().split('');
  return str1Split.every((str1Letter) => str2Split.contains(str1Letter));
}

// 16. Queue Implementation
// Perform enqueue(1), enqueue(2), dequeue()
// Expected: 1

// 17. Flatten Nested List
List nested17 = [
  1,
  [
    2,
    [3, 4],
    5,
  ],
];
// Expected: [1, 2, 3, 4, 5]

// 18. Binary Search
List<int> sorted18 = [1, 3, 5, 7, 9];
int target18 = 7;
// Expected: 3

// 19. List Intersection
List<int> list19a = [1, 2, 3], list19b = [2, 3, 4];
// Expected: [2, 3]
// Solution
final set1 = list19a.toSet();
final set2 = list19b.toSet();
final intersection = set1.intersection(set2).toList();

// 20. Roman to Integer
String roman20 = "XIV";
// Expected: 14
