void main() {
  List<int> numbers = [10, 4, 2, 9, 7, 70];
  int largestNumber = findLargestNumber(numbers);
  print("The largest number in the list is ${largestNumber}");
}

int findLargestNumber(List<int> numbers) {
  int largestNumber = numbers[0];

  for (int number in numbers) {
    if (number > largestNumber) {
      largestNumber = number;
    }
  }
  return largestNumber;
}
