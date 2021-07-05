import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Senders extends StatefulWidget {
  const Senders({Key? key}) : super(key: key);

  @override
  _SendersState createState() => _SendersState();
}

double bal1 = 22000;

class _SendersState extends State<Senders> {
  whichchoice(int choice) {
    print('$choice was pressed');
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
            FlatButton(
              onPressed: whichchoice(1),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text(
                        'Aditi Paretkar',
                      ),
                      subtitle: Text(
                        'Balance: $bal1',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
