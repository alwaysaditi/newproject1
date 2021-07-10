import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'userlist.dart';
import 'receivers.dart';
import 'userobject.dart';
import 'amount.dart';
import 'dart:async';
import 'transferobj.dart';

StreamController transferstream = StreamController.broadcast();

class TransferRecord extends StatefulWidget {
  final Stream stream1;
  TransferRecord(this.stream1);

  @override
  _TransferRecordState createState() => _TransferRecordState();
}

List<Transfers> array = [];
List<Card> children = [];

class _TransferRecordState extends State<TransferRecord> {
  addTransfer(Transfers obj) {
    array.add(obj);

    int j = 0;
    print("transferrecord accessed");
    for (j = 0; j < array.length; j++) {
      print("receiver name");
      print(array[j].rname);
    }
  }

  void initState() {
    super.initState();
    widget.stream1.listen((obj) {
      print("initstate accessed");
      addTransfer(obj);
    });
  }

  List<Card> _createChildren() {
    int i;
    List<Card> children = [];
    List<Card> finalchildren = [];

    i = array.length;
    for (i = 0; i < array.length; i++) {
      children.add(Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Text(array[i].sname),
              title: Text(array[i].rname),
              subtitle: Text(array[i].amount.toString()),
            ),
            SizedBox(height: 10)
          ],
        ),
      ));
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    if (array.length == 0) {
      return Scaffold(
          appBar: AppBar(
              title: Center(
                child: Text('Transfers Record'),
              ),
              backgroundColor: Colors.blue[200]),
          backgroundColor: Colors.blue[300],
          body: Text('No transfers yet!'));
    } else
      return Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text('Transfers Record'),
            ),
            backgroundColor: Colors.blue[200]),
        backgroundColor: Colors.blue[300],
        body: Center(child: Column(children: _createChildren())),
      );
  }
}
