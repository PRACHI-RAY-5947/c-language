import 'dart:io';

int getSum({required List<int> list}) {
  int sum = 0;

  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}

void main() {
  List<int> list = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  int sum = getSum(list: list);
  print('sum of all element of list is $sum');
}