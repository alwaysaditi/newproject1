import 'package:flutter/material.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'senders.dart';
import 'transferobj.dart';
import 'transferecord.dart';
import 'paymentack.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Center(child: Text('Amount to be paid',
         style: GoogleFonts.merienda() )),
          backgroundColor: Colors.purple[200]),
      backgroundColor: Colors.blue,
      body: Builder(
        builder: (context) => Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/frontpage.jpeg'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    child: Text(
                        "Enter the amount of money to be transferred from " +
                            arr[choiceofsender - 1].name +
                            " to " +
                            arr[choiceofreceivers - 1].name,
                        style: GoogleFonts.neuton(textStyle:TextStyle(fontSize: 15,
                    color: Colors.black) ),),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.purple.shade100,
                            offset: new Offset(6.0, 6.0),
                            blurRadius: 10.0,
                            spreadRadius: 5.0),
                      ],
                    ),
                  ),
                ),

                Container(
                    child: TextField(
                      controller: myController,
                      onChanged: (text) {
                        print(text);
                      },
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 5.0),
                        ),
                        hintText: 'Enter Amount',
                      ),
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                   color: Colors.black) ,
                   ),
                    margin: EdgeInsets.all(30)),

                // When the user presses the button, show an alert dialog containing the
                // text that the user has entered into the text field.

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          name(double.parse(myController.text));
                        },
                        child: Text('Confirm'),
                         style: ElevatedButton.styleFrom(
              primary: Colors.red[300],
               onPrimary: Colors.white,
      shadowColor: Colors.pink[50],
      elevation: 5,
            )  ),
                      SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {
                            addsomething(double.parse(myController.text));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  settings: RouteSettings(name: "/PaymentAck"),
                                  builder: (context) => PaymentAck()),
                            );
                          },
                          child: Text('Make Payment'),
                               style: ElevatedButton.styleFrom(
              primary: Colors.purple[300],
               onPrimary: Colors.white,
      shadowColor: Colors.pink[50],
      elevation: 5,
            )),
                    ],
                  ),
                ),

                SizedBox(height: 10),
              ],
            )),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
