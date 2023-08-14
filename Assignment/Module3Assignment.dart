Map<String, dynamic> listOperations(List<int> numbers) {
  int sumEven = 0;
  int largestOdd = numbers[0];
  List<int> reversedList = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      sumEven += number;
    } else {
      if (number > largestOdd) {
        largestOdd = number;
      }
    }
    reversedList.add(number);
  }
  reversedList = reversedList.reversed.toList();
  Map<String, dynamic> results = {
    "sumEven": sumEven,
    "largestOdd": largestOdd,
    "reversedList": reversedList,
  };
  return results;
}

void main() {
  List<int> numbers = [1, 5, 8, 12, 7, 6, 10, 3];
  Map<String, dynamic> results = listOperations(numbers);
  print("Sum of even numbers: ${results['sumEven']}");
  print("Largest odd number: ${results['largestOdd']}");
  print("Reversed list: ${results['reversedList']}");
}
