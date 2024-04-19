import 'dart:io';

class User {
  static String? name, gr_id, standard;
  static File? image;

  void reset() {
    name = gr_id = standard = image = null;
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
