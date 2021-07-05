import 'package:flutter/material.dart';
import 'userlist.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Center(child: Text('Banking Application')),
            backgroundColor: Colors.teal[200]),
        body: Builder(
          builder: (context)=> Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/frontpage.jpeg'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserList()),
                      );
                    },
                    child : const Text('View All Users'),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                  ),
                  SizedBox(height:10),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserList()),
                      );
                    },
                    child : const Text('Transfer Money'),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                  ),
                  SizedBox(height:10),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserList()),
                      );
                    },
                    child : const Text('View All Transfers'),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                  ),
                  SizedBox(height:10),

                ],
              )),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}



  

