






// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class UrlDisplay extends StatefulWidget {
//   const UrlDisplay({ Key key }) : super(key: key);

//   @override
//   _UrlDisplayState createState() => _UrlDisplayState();
// }

// class _UrlDisplayState extends State<UrlDisplay> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final String lat = "25.3622";
//   final String lng = "86.0835";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Url Launcher Demo'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Card(
//               color: Colors.blue,
//               shape: RoundedRectangleBorder(
//                 side: new BorderSide(color: Colors.blue, width: 2.0),
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(13.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.open_in_browser,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     InkWell(
//                       onTap: _launchURL('https://medium.com/flutterdevs/url-launcher-in-flutter-2fdafc31999e'),
//                       // url:'https://drive.google.com/uc?export=view&id=1d2Abg6A_OGhM96QjPF1W_QfxboN1nSAC',
//                       child: Text(
//                         'Open Web url',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
           
            
//           ],
//         ));
//   }

  
  
//   _launchURL(String url) async {
//     launch(url
     
//       );
//     //     'https://drive.google.com/uc?export=view&id=1d2Abg6A_OGhM96QjPF1W_QfxboN1nSAC'
//     // const url =
//     //     'https://medium.com/flutterdevs/url-launcher-in-flutter-2fdafc31999e';
//     // if (await canLaunch(url)) {
//     //   await launch(url);
//     // } else {
//     //   throw 'Could not launch $url';
//     // }
//   }
// }

