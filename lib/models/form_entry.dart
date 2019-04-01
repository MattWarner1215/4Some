import 'package:firebase_database/firebase_database.dart';

class FormEntry {
  String key;
  String name;
  String phone;
  String email;
  String userId;

  FormEntry(this.name, this.userId, this.email, this.phone);

  FormEntry.fromSnapshot(DataSnapshot snapshot) :
        key = snapshot.key,
        userId = snapshot.value["userId"],
        name = snapshot.value["name"],
        email = snapshot.value["email"],
        phone = snapshot.value["phone"];

  toJson() {
    return {
      "userId": userId,
      "name": name,
      "email": email,
      "phone": phone,
    };
  }
}