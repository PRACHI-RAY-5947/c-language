import 'dart:io';
void main() {
  int r, c;
  stdout.write("Enter Row :");
  r = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Column :");
  c = int.parse(stdin.readLineSync() ?? "0");
  print("------: A elements :------");
  List<List<int>> a = List.generate(r, (ri) {
    return List.generate(c, (ci) {
      stdout.write("a[$ri][$ci] :");
      return int.parse(stdin.readLineSync() ?? "0");
    });
  });
  a.forEach((element) {
    element.forEach((value) {
      stdout.write("$value ");
    });
    print(" ");
  });
  print("------: B elements :------");
  List<List<int>> b = List.generate(r, (ri) {
    return List.generate(c, (ci) {
      stdout.write("b[$ri][$ci] :");
      return int.parse(stdin.readLineSync() ?? "0");
    });
  });
  b.forEach((element) {
    element.forEach((value) {
      stdout.write("$value ");
    });
    print(" ");
  });
  print("------ : A And B Sum :------");
  List<List<int>> sum = List.generate(r, (ri) {
    return List.generate(c, (ci) {
      stdout.write("${a[ri][ci] + b[ri][ci]} ");
      return int.parse(stdin.readLineSync() ?? "0");
    });
  });
  sum.forEach((element) {
    element.forEach((value) {
      stdout.write("$value ");
    });
    print(" ");
  });
}