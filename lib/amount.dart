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

name(double amount1) {
  int i;
  for (i = 0; i < 1; i++) {
    streamController.add(amount1.toDouble());
  }
}

addsomething(double amount2) {
  int j;
  for (j = 0; j < 1; j++) {
    print("add something was called");
    String rname = arr[choiceofreceivers - 1].name;
    String sname = arr[choiceofsender - 1].name;
    double amount1 = amount2.toDouble();
    Transfers obj = Transfers(rname, sname, amount1);

    transferstream.add(obj);
  }
}

class _AmountState extends State<Amount> {
  final myController = TextEditingController();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(child: Text('Banking Application')),
          backgroundColor: Colors.teal[200]),
      backgroundColor: Colors.blue,
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
                Center(
                  child: Text(
                      "Enter the amount of money to be transerred from " +
                          arr[choiceofsender - 1].name +
                          "\n to " +
                          arr[choiceofreceivers - 1].name),
                ),
                
                Container(child: TextField(controller: myController),
                margin: EdgeInsets.all(30)),
              SizedBox(height: 20),
                Center(
                  child: Row(children: [ ElevatedButton(
                    onPressed: () {
                      name(5000.toDouble());
                    },
                    child: Text('Confirm'),
                  ),
                  
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed :() {addsomething(5000.toDouble());},
                      child: Text('Make Payment')),],),
                ),
               
                SizedBox(height: 10),
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
