import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class UserList extends StatelessWidget {
  whichchoice(int choice) {
    print('$choice was pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('Registered Users'),
          ),
          backgroundColor: Colors.blue[200]),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text(
                        'Aditi Paretkar',
                      ),
                      subtitle: Text(
                        'aditiparetkar@gmail.com',
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Arvind Paretkar'),
                      subtitle: Text('arvindparetkar@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Ashwini Paretkar'),
                      subtitle: Text('ashparetkar@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Vishakha Paretkar'),
                      subtitle: Text('vishkaha.cp@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Robert Green'),
                      subtitle: Text('robert.vg@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Arthur Hayden'),
                      subtitle: Text('arthur01@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Daniel Brown'),
                      subtitle: Text('daniel.b101@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Cathy Lane'),
                      subtitle: Text('cathy.rp@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Lisa Hayden'),
                      subtitle: Text('lisahayden@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Jessica Brown'),
                      subtitle: Text('jessica.b24@gmail.com'),
                    ),
                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
