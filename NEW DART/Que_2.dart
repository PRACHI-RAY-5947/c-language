void main() {
  List<int> numbers = [10, 5, 20, 15, 8];
  
  int largest = numbers[0];
  
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  
  print("The largest number in the array is: $largest");
}
