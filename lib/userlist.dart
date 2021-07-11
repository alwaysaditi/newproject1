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
          backgroundColor: Colors.purple[200]),
      backgroundColor: Colors.pink[100],
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Card(
              color: Colors.pink.shade50,
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
                color: Colors.pink.shade50,
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
                color: Colors.pink.shade50,
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
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Sheldon Cooper'),
                      subtitle: Text('sheldon.cp@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Rachel Green'),
                      subtitle: Text('rachel.vg@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Chandler Bing'),
                      subtitle: Text('chandler01@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Monica Geller'),
                      subtitle: Text('monica.g101@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Ross Geller'),
                      subtitle: Text('rossgeller@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Joey Tribbiani'),
                      subtitle: Text('joey101@gmail.com'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.pink.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.laugh),
                      title: Text('Phoebe Buffay',
                      ),
                      subtitle: Text('phoebe.b24@gmail.com'),
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
                                 style: ElevatedButton.styleFrom(
              primary: Colors.purple[300],
               onPrimary: Colors.white,
      shadowColor: Colors.pink[50],
      elevation: 5,
            )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
