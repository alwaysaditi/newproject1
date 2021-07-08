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
       print("setstate was called");
         print(arr[choiceofsender-1].balance);
      print(arr[choiceofreceivers-1].balance);
      arr[choiceofsender-1].balance = arr[choiceofsender-1].balance - amount;
      arr[choiceofreceivers-1].balance = arr[choiceofreceivers-1].balance + amount;
        print("setstate job done");
      print(arr[choiceofsender-1].balance);
      print(arr[choiceofreceivers-1].balance);
    
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
            WidgetBuilder(arr[1].name, arr[1].balance, arr[1].choice, arr[1]),
            WidgetBuilder(arr[2].name, arr[2].balance, arr[2].choice, arr[2]),
            WidgetBuilder(arr[3].name, arr[3].balance, arr[3].choice, arr[3]),
            WidgetBuilder(arr[4].name, arr[4].balance, arr[4].choice, arr[4]),
            WidgetBuilder(arr[5].name, arr[5].balance, arr[5].choice, arr[5]),
            WidgetBuilder(arr[6].name, arr[6].balance, arr[6].choice, arr[6]),
            WidgetBuilder(arr[7].name, arr[7].balance, arr[7].choice, arr[7]),
            WidgetBuilder(arr[8].name, arr[8].balance, arr[8].choice, arr[8]),
            WidgetBuilder(arr[9].name, arr[9].balance, arr[9].choice, arr[9]),
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





