import 'dart:io';

class Product {
  int proId;
  String proName;
  int proQty;
  double proPrice;

  Product(this.proId, this.proName, this.proQty, this.proPrice);
}

class Customer {
  int custId;
  String custName;
  String custContact;
  List<Product> custCart = [];

  Customer(this.custId, this.custName, this.custContact);

  double calculateTotalAmount() {
    double totalAmount = 0;

    for (var product in custCart) {
      totalAmount += (product.proQty * product.proPrice);
    }
    if (totalAmount >= 500 && totalAmount < 1500) {
      totalAmount *= 0.9; // 10% discount
    } else if (totalAmount >= 1500 && totalAmount < 3500) {
      totalAmount *= 0.8; // 20% discount
    } else if (totalAmount >= 3500) {
      totalAmount *= 0.75; // 25% discount
    }

    return totalAmount;
  }
}

void main() {
  List<Customer> customers = [];
  Customer customer1 = Customer(1, 'John Doe', '123-456-7890');
  Customer customer2 = Customer(2, 'Jane Smith', '987-654-3210');

  customers.add(customer1);
  customers.add(customer2);

  customer1.custCart.add(Product(101, 'ProductA', 2, 500));
  customer1.custCart.add(Product(102, 'ProductB', 1, 1000));

  customer2.custCart.add(Product(201, 'ProductC', 3, 700));
  customer2.custCart.add(Product(202, 'ProductD', 2, 1200));

  for (var customer in customers) {
    print('Customer ID: ${customer.custId}');
    print('Customer Name: ${customer.custName}');
    print('Customer Contact: ${customer.custContact}');

    print('Products in Cart:');
    for (var product in customer.custCart) {
      print(
          'Product ID: ${product.proId}, Name: ${product.proName}, Quantity: ${product.proQty}, Price: ${product.proPrice}');
    }

    double totalAmount = customer.calculateTotalAmount();
    print('Total Amount: $totalAmount');

    print('Discount Amount: ${customer.calculateTotalAmount() - totalAmount}');
    print('-------------------------');
  }
}