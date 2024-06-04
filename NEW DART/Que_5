import 'dart:io';

void main() {
  int r, c, choice, sum = 0;
  stdout.write("Enter Row :");
  r = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Column :");
  c = int.parse(stdin.readLineSync() ?? "0");
  List<List<int>> a = List.generate(r, (ri) {
    return List.generate(c, (ci) {
      stdout.write("a[$ri][$ci] :");
      return int.parse(stdin.readLineSync() ?? "0");
    });
  });
  do {
    print("------: Menu :------");
    print("1. Sum of all elements :");
    print("2. Sum of specific Row :");
    print("3. Sum of specific Column :");
    print("4. Sum of diagonal elements :");
    print("5. Sum of antidiagonal elements :");
    print("0. Exit :");
    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync() ?? "0");
    switch (choice) {
      case 1:
        List.generate(r, (ri) {
          return List.generate(c, (ci) {
            sum += a[r][c];
          });
        });
        print("Sum :$sum");
        break;
      case 2:
        int row = 0;
        List.generate(r, (ri) {
          return List.generate(c, (ci) {
            sum += a[row][c];
          });
        });
        print("Sum :$sum");
        break;
      case 3:
        int column = 0;
        List.generate(r, (ri) {
          return List.generate(c, (ci) {
            sum += a[r][column];
          });
        });
        print("Sum :$sum");
        break;
      case 4:
        List.generate(r, (ri) {
          return List.generate(c, (ci) {
            if (ri == ci) {
              sum += a[r][c];
            }
          });
        });
        print("Sum :$sum");
        break;
      case 5:
        List.generate(r, (ri) {
          return List.generate(c, (ci) {
            if (ri + ci == ri - 1) {
              sum += a[r][c];
            }
          });
        });
        print("Sum :$sum");
        break;
    }
  } while (choice != 0);
}
