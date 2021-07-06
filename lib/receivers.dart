import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'senders.dart';

class Receivers extends StatefulWidget {
  const Receivers({Key? key}) : super(key: key);

  @override
  _ReceiversState createState() => _ReceiversState();
}

int choiceofreceivers = 0;

class _ReceiversState extends State<Receivers> {
  Senders() {
    print("Constructor called");
  }

  @override
  Widget build(BuildContext context) {
    whichchoicereceivers(int choice) {
      print(
          '$choiceofsender is choice of sender and $choice is choice of receiver');
      choiceofreceivers = choice;
    }

    Container WidgetBuilder(String name, double balance, int choice) {
      return Container(
          child: ElevatedButton(
            onPressed: () {
              whichchoicereceivers(choice);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserList()),
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
            child: Text('Select a Receiver'),
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
