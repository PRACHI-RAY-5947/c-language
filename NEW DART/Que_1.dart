void main() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];
  
  print("Negative elements in the array:");
  for (int num in numbers) {
    if (num < 0) {
      print(num);
    }
  }
}
