import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('Registered Users'),
          ),
          backgroundColor: Colors.teal[200]),
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
                      title: Text('Sonu Nigam',
                      
                      ),  
                      subtitle: Text('Best of Sonu Nigam Song',
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
          ),  
              ],  
            ),  
          ),  Card(  
            child: Column(  
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[  
          const ListTile(  
            leading: Icon(FontAwesomeIcons.laugh),  
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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
            title: Text('Sonu Nigam'),  
            subtitle: Text('Best of Sonu Nigam Song'),  
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

// ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         )


// CARD

// SizedBox(
//                          height: 100,
//                          child: ListTile(
//                           leading: Icon(Icons.album),
//                           title: Text('The Enchanted Nightingale'),
//                           subtitle: Text(
//                               'Music by Julie Gable. Lyrics by Sidney Stein.'),
//                                              ),
//                        )