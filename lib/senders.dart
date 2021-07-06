import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'receivers.dart';

class Senders extends StatefulWidget {
  const Senders({Key? key}) : super(key: key);

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
  Senders() {
    print("Constructor called");
  }

  @override
  Widget build(BuildContext context) {
    whichchoicesenders(int choice) {
      print('$choice was pressed');
      choiceofsender = choice;
    }

    Container WidgetBuilder(String name, double balance, int choice) {
      return Container(
          child: ElevatedButton(
            onPressed: () {
              whichchoicesenders(choice);
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
            WidgetBuilder('Aditi Paretkar', bal1, 1),
            WidgetBuilder('Arvind Paretkar', bal2, 2),
            WidgetBuilder('Ashwini Paretkar', bal3, 3),
            WidgetBuilder('Vishakha Paretkar', bal4, 4),
            WidgetBuilder('Robert Green', bal5, 5),
            WidgetBuilder('Arthur Hayden', bal6, 6),
            WidgetBuilder('Daniel Brown', bal7, 7),
            WidgetBuilder('Cathy Lane', bal8, 8),
            WidgetBuilder('Lisa Hayden', bal9, 9),
            WidgetBuilder('Jessica Brown', bal10, 10),
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
