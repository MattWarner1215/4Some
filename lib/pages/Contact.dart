
import 'package:firebase_database/firebase_database.dart';

class Contact {
  String name;
  DateTime dob;
  String phone = '';
  String email = '';
  String favoriteColor = '';


  Contact(this.name, this.email, this.phone);

  Contact.fromSnapshot(DataSnapshot snapshot) :

        name = snapshot.value["name"],
        email = snapshot.value["email"],
        phone = snapshot.value["phone"];

  toJson() {
    return {

      "name": name,
      "email": email,
      "phone": phone,
    };
  }



}

