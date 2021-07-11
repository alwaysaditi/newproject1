import 'package:flutter/material.dart';

class UserObject {
  String name;
  double balance;
  String email;
  int choice;

  UserObject(this.name, this.balance, this.email, this.choice);
}

UserObject obj1 =
    UserObject('Aditi Paretkar', 22000, 'aditiparetkar@gmail.com', 1);

UserObject obj2 =
    UserObject('Arvind Paretkar', 25000, 'arvindparetkar@gmail.com', 2);

UserObject obj3 =
    UserObject('Ashwini Paretkar', 23000, 'ashparetkar@gmail.com', 3);

UserObject obj4 =
    UserObject('Sheldon Cooper', 22000, 'sheldon.cp@gmail.com', 4);

UserObject obj5 = UserObject('Rachel Green', 29000, 'rachel.vg@gmail.com', 5);

UserObject obj6 = UserObject('Chandler Bing', 28000, 'chandler01@gmail.com', 6);

UserObject obj7 = UserObject('Monica Geller', 21000, 'monica.g101@gmail.com', 7);

UserObject obj8 = UserObject('Ross Geller', 23000, 'rossgeller@gmail.com', 8);

UserObject obj9 = UserObject('Joey Tribbiani', 27000, 'joey101@gmail.com', 9);

UserObject obj10 =
    UserObject('Phoebe Buffay', 22000, 'phoebe.b24@gmail.com', 10);

List<UserObject> arr = [
  obj1,
  obj2,
  obj3,
  obj4,
  obj5,
  obj6,
  obj7,
  obj8,
  obj9,
  obj10
];
