void main() {
  final numbers = [1, 2, 4, 3, 5, 3, 4, 6, 7, 8, 9, 10];
  print(numbers.reversed);
  print(numbers.reversed.toList());
  print(numbers.length);
  print(numbers.reversed.toSet());
  print(numbers.first);
  print(numbers.last);
  print(numbers.isEmpty);
  final numbersmayoresque5 = numbers.where((number) => number > 5);
  print(numbersmayoresque5);
}
