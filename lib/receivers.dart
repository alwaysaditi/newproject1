import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'senders.dart';
import 'userobject.dart';
import 'amount.dart';

class Receivers extends StatefulWidget {
  const Receivers({Key? key}) : super(key: key);

  @override
  _ReceiversState createState() => _ReceiversState();
}

int choiceofreceivers = 0;

class _ReceiversState extends State<Receivers> {
  @override
  Widget build(BuildContext context) {
    whichchoicereceivers(int choice) {
      print(
          '$choiceofsender is choice of sender and $choice is choice of receiver');
      choiceofreceivers = choice;
      print(arr[0].balance);
      print(arr[4].balance);
    }

    Container WidgetBuilder(String name, double balance, int choice) {
      return Container(
          child: ElevatedButton(
            onPressed: () {
              whichchoicereceivers(choice);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Amount()),
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
            WidgetBuilder(obj1.name, obj1.balance, obj1.choice),
            WidgetBuilder(obj2.name, obj2.balance, obj2.choice),
            WidgetBuilder(obj3.name, obj3.balance, obj3.choice),
            WidgetBuilder(obj4.name, obj4.balance, obj4.choice),
            WidgetBuilder(obj5.name, obj5.balance, obj5.choice),
            WidgetBuilder(obj6.name, obj6.balance, obj6.choice),
            WidgetBuilder(obj7.name, obj7.balance, obj7.choice),
            WidgetBuilder(obj8.name, obj8.balance, obj8.choice),
            WidgetBuilder(obj9.name, obj9.balance, obj9.choice),
            WidgetBuilder(obj10.name, obj10.balance, obj10.choice),
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
