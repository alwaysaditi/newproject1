import 'package:flutter/material.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'senders.dart';
import 'transferobj.dart';
import 'transferecord.dart';

class PaymentAck extends StatefulWidget {
  const PaymentAck({ Key? key }) : super(key: key);

  @override
  _PaymentAckState createState() => _PaymentAckState();
}

class _PaymentAckState extends State<PaymentAck> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(child: Text('Payment Acknowledgement')),
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
                        "Payment Successful! ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
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
              )]

            
        ),),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}


 