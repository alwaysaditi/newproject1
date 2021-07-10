import 'package:flutter/material.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'senders.dart';

class Amount extends StatefulWidget {
  const Amount({Key? key}) : super(key: key);

  @override
  _AmountState createState() => _AmountState();
}

name() {
  streamController.add((5000/2).toDouble());
}

class _AmountState extends State<Amount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(child: Text('Banking Application')),
          backgroundColor: Colors.teal[200]),
      body: Builder(
        builder: (context) => Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/frontpage.jpeg'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: name, child: Text('thats me')),
                Text("money to be transerred from" +
                    arr[choiceofsender - 1].name +
                    "\n to" +
                    arr[choiceofreceivers - 1].name),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go back!'),
                  ),
                )
              ],
            )),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
