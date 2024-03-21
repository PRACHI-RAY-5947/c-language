import 'dart:io';

class User {
  static String? name, contact, email;
  static File? image;

  void reset() {
    name = contact = email = image = null;
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
