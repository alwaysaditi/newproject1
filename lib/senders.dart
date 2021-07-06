import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

whichchoice(int choice) {
  print('$choice was pressed');
}

class Senders extends StatefulWidget {
  const Senders({Key? key}) : super(key: key);

  @override
  _SendersState createState() => _SendersState();
}

double bal1 = 22000;
double bal2 = 25000;

class _SendersState extends State<Senders> {
  Center WidgetBuilder(String name, double balance, int choice) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          whichchoice(choice);
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
      ),
    );
  }

  Senders() {
    print("Constructor called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('Select a Sender'),
          ),
          backgroundColor: Colors.blue[200]),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(children: [
            WidgetBuilder('Aditi Paretkar', 22000, 1),
            SizedBox(height:5),
            WidgetBuilder('Arvind Paretkar', 25000, 2),

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
  