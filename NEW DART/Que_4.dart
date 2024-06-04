import 'dart:io';

void main() {
  List<int> array = [];
  int choice;

  while (true) {
    print("\nMenu:");
    print("1. Insert Element");
    print("2. Delete Element");
    print("3. Update Element");
    print("4. View Elements");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        insertElement(array);
        break;
      case 2:
        deleteElement(array);
        break;
      case 3:
        updateElement(array);
        break;
      case 4:
        viewElements(array);
        break;
      case 5:
        exit(0);
        break;
      default:
        print("Invalid choice...");
    }
  }
}

void insertElement(List<int> array) {
  stdout.write("Enter the element to insert: ");
  int element = int.parse(stdin.readLineSync()!);
  array.add(element);
  print("Element inserted successfully!");
}

void deleteElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. Cannot delete.");
    return;
  }

  stdout.write("Enter the index of the element to delete: ");
  int index = int.parse(stdin.readLineSync()!);

  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }

  array.removeAt(index);
  print("Element deleted successfully!");
}

void updateElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. Cannot update.");
    return;
  }

  stdout.write("Enter the index of the element to update: ");
  int index = int.parse(stdin.readLineSync()!);

  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }

  stdout.write("Enter the new value for the element: ");
  int newValue = int.parse(stdin.readLineSync()!);

  array[index] = newValue;
  print("Element updated successfully!");
}

void viewElements(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty.");
    return;
  }

  print("Elements in the array:");
  for (int i = 0; i < array.length; i++) {
    print("Index $i: ${array[i]}");
  }
}
