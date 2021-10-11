// import 'dart:io';

// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/material.dart';

// import 'package:vtu/CSE/3rd%20sem.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // No need of streamsubscription
//   ConnectivityResult previous;

//   @override
//   void initState() {
//     super.initState();
//     try {
//       InternetAddress.lookup('google.com').then((result) {
//         if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//           print("Connected");
//           // internet conn available

//         }
//         // (result.isNotEmpty && result[0].rawAddress.isNotEmpty)
//         else {
//           // no conn
//           _showdialog();
//         }
//       }).catchError((error) {
//         // no conn
//         _showdialog();
//       });
//     } on SocketException catch (_) {
//       // no internet
//       _showdialog();
//     }

//     Connectivity()
//         .onConnectivityChanged
//         .listen((ConnectivityResult connresult) {
//       if (connresult == ConnectivityResult.none) {
//       } else if (previous == ConnectivityResult.none) {
//         // internet conn
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => CSE3SEM(),
//         ));
//       }

//       previous = connresult;
//     });
//   }

//   void _showdialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('ERROR'),
//         content: Text("No Internet Detected."),
//         actions: <Widget>[
//           // ignore: deprecated_member_use
//           FlatButton(
//             // method to exit application programitacally
//             onPressed: () => exit(0),
//             // SystemChannels.platform.invokeMethod('Systemnavigator.pop'),
//             child: Text("Exit"),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CircularProgressIndicator(),
//             Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Text("Checking Your Internet Connection."),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
