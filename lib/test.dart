import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'amount.dart';

UserObject obj = UserObject(" ", 1, " ", 2);

fun1() {
  obj.name = 'Aditi';
  obj.balance = 1000;
  obj.choice = 2;
  obj.email = 'abc';
  fun2(obj);
}

void main() {
  fun1();
}

fun2(UserObject obj) {
  obj.balance = 3000;
  print("from fun2");
  print('$obj.name');
  print("$obj.balance");
  print("$obj.choice");
  print("$obj.email");
}

fun3(UserObject obj) {
  obj.balance = 5000;
  print("from fun3");
  print('$obj.name');
  print("$obj.balance");
  print("$obj.choice");
  print("$obj.email");
}
