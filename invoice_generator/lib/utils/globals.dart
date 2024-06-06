import 'dart:io';

import 'package:flutter/cupertino.dart';

class User {
  static String? number, detail, date, terms, name, email, address;
  static File? image;

  void reset() {
    number = date = detail = terms = name = email = address = image = null;
  }
}

//Singleton
class Globals {
  //private named constructor
  Globals._();
  //assign into static final object
  static final Globals globals = Globals._();

  User user = User();

  List<User> allUsers = [];
}

bool image = true;
List bg_images = [
  "lib/assets/bg_images/temp1.jpg",
  "lib/assets/bg_images/temp2.jpg",
  "lib/assets/bg_images/temp3.jpg",
  "lib/assets/bg_images/temp4.jpg",
  "lib/assets/bg_images/temp5.jpg",
  "lib/assets/bg_images/temp6.jpg",
];
int selectedImage = 0;

// List<TextEditingController> controller = [
//   TextEditingController(),
//   TextEditingController(),
// ];

List<Map<String, dynamic>> languages = [
  {
    'languages': 'English',
  },
  {
    'languages': 'Spanish',
  },
  {
    'languages': 'French',
  },
  {
    'languages': 'German',
  },
  {
    'languages': 'Italian',
  },
  {
    'languages': 'Portuguese',
  },
  {
    'languages': 'Russian',
  },
  {
    'languages': 'Chinese',
  },
  {
    'languages': 'Japanese',
  },
  {
    'languages': 'Korean',
  },
  {
    'languages': 'Arabic',
  },
  {
    'languages': 'Hindi',
  },
  {
    'languages': 'Bengali',
  },
  {
    'languages': 'Urdu',
  },
  {
    'languages': 'Turkish',
  },
  {
    'languages': 'Dutch',
  },
  {
    'languages': 'Swedish',
  },
  {
    'languages': 'Norwegian',
  },
  {
    'languages': 'Danish',
  },
  {
    'languages': 'Finnish',
  },
];
List<Map<String, dynamic>> currency = [
  {
    "name": "United States",
    "currency": "US Dollar",
    "code": "USD",
    "symbol": "\$"
  },
  {
    "name": "United Kingdom",
    "currency": "British Pound",
    "code": "GBP",
    "symbol": "£"
  },
  {
    "name": "Canada",
    "currency": "Canadian Dollar",
    "code": "CAD",
    "symbol": "CA\$"
  },
  {
    "name": "Australia",
    "currency": "Australian Dollar",
    "code": "AUD",
    "symbol": "A\$"
  },
  {"name": "Eurozone", "currency": "Euro", "code": "EUR", "symbol": "€"},
  {"name": "Japan", "currency": "Japanese Yen", "code": "JPY", "symbol": "¥"},
  {
    "name": "Switzerland",
    "currency": "Swiss Franc",
    "code": "CHF",
    "symbol": "CHF"
  },
  {"name": "China", "currency": "Chinese Yuan", "code": "CNY", "symbol": "¥"},
  {"name": "India", "currency": "Indian Rupee", "code": "INR", "symbol": "₹"},
  {
    "name": "Brazil",
    "currency": "Brazilian Real",
    "code": "BRL",
    "symbol": "R\$"
  },
  {
    "name": "South Korea",
    "currency": "South Korean Won",
    "code": "KRW",
    "symbol": "₩"
  },
  {
    "name": "Mexico",
    "currency": "Mexican Peso",
    "code": "MXN",
    "symbol": "Mex\$"
  },
  {
    "name": "South Africa",
    "currency": "South African Rand",
    "code": "ZAR",
    "symbol": "R"
  },
  {"name": "Russia", "currency": "Russian Ruble", "code": "RUB", "symbol": "₽"},
  {
    "name": "Saudi Arabia",
    "currency": "Saudi Riyal",
    "code": "SAR",
    "symbol": "SR"
  },
  {
    "name": "Singapore",
    "currency": "Singapore Dollar",
    "code": "SGD",
    "symbol": "S\$"
  },
  {
    "name": "Sweden",
    "currency": "Swedish Krona",
    "code": "SEK",
    "symbol": "kr"
  },
  {
    "name": "New Zealand",
    "currency": "New Zealand Dollar",
    "code": "NZD",
    "symbol": "NZ\$"
  },
  {
    "name": "Hong Kong",
    "currency": "Hong Kong Dollar",
    "code": "HKD",
    "symbol": "\$"
  },
  {"name": "Turkey", "currency": "Turkish Lira", "code": "TRY", "symbol": "₺"}
];
