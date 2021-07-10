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
int i = 0;

class TransferRecord extends StatefulWidget {
  final Stream stream1;
  TransferRecord(this.stream1);

  @override
  _TransferRecordState createState() => _TransferRecordState();
}

List<Transfers> array = [];
List<Card> childrenobjects = [];
int cal = 0;
List<Card> finalchildren = childrenobjects.toSet().toList();

class _TransferRecordState extends State<TransferRecord> {
  late StreamSubscription _subscription;
  addTransfer(Transfers obj) {
    int j = 0;
    print("transferrecord accessed");

    for (j = 0; j < array.length; j++) {
      print("receiver name");
      print(array[j].rname);
    }
    int k = 0;
    array.add(obj);
    _createChildren();
    for (j = 0; j < childrenobjects.length - 1; j++) {
      for (k = j; k < childrenobjects.length - 1; k++) {
        if (array[j].rname == array[j + 1].rname) {
          childrenobjects.remove(childrenobjects[j + 1]);
          array.remove(array[j + 1]);
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.stream1.listen((obj) {
      addTransfer(obj);
    });
  }

  void _createChildren() {
    childrenobjects.add(Card(
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
    finalchildren = childrenobjects.toSet().toList();
    i = i + 1;
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
        body: SingleChildScrollView(
            child: Center(child: Column(children: childrenobjects))),
      );
  }
}
