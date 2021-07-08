import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'amount.dart';
import 'dart:async';

StreamController streamController = new StreamController();

class Senders extends StatefulWidget {
  final Stream stream;
  Senders(this.stream);

  @override
  _SendersState createState() => _SendersState();
}

double bal1 = 22000;
double bal2 = 25000;
double bal3 = 23000;
double bal4 = 22000;
double bal5 = 29000;
double bal6 = 28000;
double bal7 = 21000;
double bal8 = 25000;
double bal9 = 27000;
double bal10 = 22000;
int choiceofsender = 0;

class _SendersState extends State<Senders> {
  int updatebalance(double amount) {
    setState(() {
      arr[choiceofsender].balance = arr[choiceofsender].balance - amount;
      arr[choiceofreceivers].balance = arr[choiceofreceivers].balance + amount;
      print(arr[choiceofsender].balance);
      print(arr[choiceofreceivers].balance);
      print("setstate was called");
    });
    return 1;
  }

  void initState() {
    super.initState();
    widget.stream.listen((balance) {
      updatebalance(balance);
    });
  }

  @override
  Widget build(BuildContext context) {
    whichchoicesenders(int choice, UserObject objs) {
      print('$choice was pressed');
      choiceofsender = choice;

      //he object IS PASSED BY REFERENCE IN THIS MANNER OBJECTS ARE PASSED FROM ONE FUNCTION TO ANOTHER BY REFERENCE , BUT YOU CANT ASSIGN OBJECT TO BE COPIED TO ONE ANOTHER
    }

    Container WidgetBuilder(
        String name, double balance, int choice, UserObject obj) {
      return Container(
          child: ElevatedButton(
            onPressed: () {
              whichchoicesenders(choice, obj);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Receivers()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(FontAwesomeIcons.laugh),
                  title: Text(
                    '$name',
                  ),
                  subtitle: Text(
                    'Balance: $balance',
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue[100],
            ),
          ),
          padding: EdgeInsets.only(bottom: 10));
    }

    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('Select a Sender'),
          ),
          backgroundColor: Colors.blue[200]),
      backgroundColor: Colors.blue[300],
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(children: [
            WidgetBuilder(arr[0].name, arr[0].balance, arr[0].choice, arr[0]),
            WidgetBuilder(obj2.name, obj2.balance, obj2.choice, obj2),
            WidgetBuilder(obj3.name, obj3.balance, obj3.choice, obj3),
            WidgetBuilder(obj4.name, obj4.balance, obj4.choice, obj4),
            WidgetBuilder(arr[4].name, arr[4].balance, arr[4].choice, arr[4]),
            WidgetBuilder(obj6.name, obj6.balance, obj6.choice, obj6),
            WidgetBuilder(obj7.name, obj7.balance, obj7.choice, obj7),
            WidgetBuilder(obj8.name, obj8.balance, obj8.choice, obj8),
            WidgetBuilder(obj9.name, obj9.balance, obj9.choice, obj9),
            WidgetBuilder(obj10.name, obj10.balance, obj10.choice, obj10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

//AMOUNT.Dart



