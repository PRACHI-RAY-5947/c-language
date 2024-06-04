import 'dart:io';

void main() {
  List<List<int>> matrix1 = List.generate(3, (_) => List<int>.filled(3, 0));
  List<List<int>> matrix2 = List.generate(3, (_) => List<int>.filled(3, 0));

  print("Enter elements for Matrix 1:");
  inputMatrix(matrix1);

  print("Enter elements for Matrix 2:");
  inputMatrix(matrix2);

  List<List<int>> resultMatrix = addMatrices(matrix1, matrix2);

  print("\nResultant Matrix:");
  displayMatrix(resultMatrix);
}

void inputMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("Enter element at position ($i, $j): ");
      matrix[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> resultMatrix =
      List.generate(3, (_) => List<int>.filled(3, 0));
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      resultMatrix[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }
  return resultMatrix;
}

void displayMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i]);
  }
}
