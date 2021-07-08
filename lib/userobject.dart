import 'package:flutter/material.dart';

class UserObject {
  String name;
  double balance;
  String email;
  int choice;

  UserObject(this.name, this.balance, this.email, this.choice);
  UserObject copyWith(UserObject obj) {
    return UserObject(this.name, this.balance, this.email, this.choice);
  }
}

UserObject obj1 =
    UserObject('Aditi Paretkar', 22000, 'aditiparetkar@gmail.com', 1);

UserObject obj2 =
    UserObject('Arvind Paretkar', 25000, 'arvindparetkar@gmail.com', 2);

UserObject obj3 =
    UserObject('Ashwini Paretkar', 23000, 'ashparetkar@gmail.com', 3);

UserObject obj4 =
    UserObject('Vishakha Paretkar', 22000, 'vishakha.cp@gmail.com', 4);

UserObject obj5 = UserObject('Robert Green', 29000, 'robert.vg@gmail.com', 5);

UserObject obj6 = UserObject('Arthur Hayden', 28000, 'arthur01@gmail.com', 6);

UserObject obj7 = UserObject('Daniel Brown', 21000, 'daniel.b101@gmail.com', 7);

UserObject obj8 = UserObject('Cathy Lane', 23000, 'ashparetkar@gmail.com', 8);

UserObject obj9 = UserObject('Lisa Hayden', 27000, 'lisahayden@gmail.com', 9);

UserObject obj10 =
    UserObject('Jessica Brown', 22000, 'jessica.b24@gmail.com', 10);
