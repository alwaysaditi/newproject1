import 'package:flutter/material.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'senders.dart';
import 'transferobj.dart';
import 'transferecord.dart';

class Amount extends StatefulWidget {
  const Amount({Key? key}) : super(key: key);

  @override
  _AmountState createState() => _AmountState();
}

name() {
  int i;
  for (i = 0; i < 1; i++) {
    streamController.add((5000).toDouble());
  }
}

addsomething() {
  print("add something was called");
  String rname = arr[choiceofreceivers-1].name;
  String sname = arr[choiceofsender-1].name;
  double amount1 = 5000.toDouble();
  Transfers obj = Transfers(rname, sname, amount1);
 
  transferstream.add(obj);
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
                ),
                ElevatedButton(
                    onPressed: addsomething, child: Text('add transfer'))
              ],
            )),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
