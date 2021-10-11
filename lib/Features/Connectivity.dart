 
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:vtu/Home/Home.dart';

class Offline extends StatefulWidget {
  const Offline({Key key}) : super(key: key);

  @override
  _OfflineState createState() => _OfflineState();
}

class _OfflineState extends State<Offline> {
  String result = '';
 
  @override

  initState() {
    checkStatus();
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            Icons.warning_amber,
            size: 50,
            color: Colors.amber[600],
          )),
          Wrap(
            children: [
              Text(
                'Check your Connection',
                style: TextStyle(color: Colors.redAccent, fontSize: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void checkStatus() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Branch()),
        );
      
      } else {
        changeValues('No Internet', Colors.redAccent[200]);
        _showdialog();
        // showDilog();
      }
    });
  }

  void _showdialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        title: Text(
          'ERROR..!',
          style: TextStyle(color: Colors.amber),
        ),
        content: Text(
          "No Internet Detected.",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        actions: <Widget>[
          // ignore: deprecated_member_use
          RaisedButton(
            color: Colors.red,
            // method to exit application programitacally
            onPressed: () => exit(0),
            // SystemChannels.platform.invokeMethod('Systemnavigator.pop'),
            child: Text(
              "Exit",
              style: TextStyle(color: Colors.white),
            ),
          ),
          // ignore: deprecated_member_use
          // RaisedButton(
          //   color: Colors.green,
          //   // method to exit application programitacally
          //   onPressed: () => Navigator.of(context).pop(),
          //   // SystemChannels.platform.invokeMethod('Systemnavigator.pop'),
          //   child: Text("Refresh",style: TextStyle(color: Colors.white),),
          // ),
        ],
      ),
    );
  }

  void changeValues(String resultval, Color colorval) {
    setState(() {
      result = resultval;
      // colorsval = colorval;
    });
  }
}

