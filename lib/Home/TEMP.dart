// import 'package:flutter/material.dart';

// // import 'sem.dart';
// // import 'package:vtu/Home/sem.dart';

// class Branch extends StatefulWidget {
//   const Branch({Key key}) : super(key: key);

//   @override
//   _BranchState createState() => _BranchState();
// }

// class _BranchState extends State<Branch> {
//   get decoration => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("select ur branch")),
//         backgroundColor: Colors.pink[200],

//         //     flexibleSpace: Container(decoration: BoxDecoration(
//         //        gradient:SweepGradient(colors: [color.accents,color.blue,color.green],
//         //    endAngle: 1),
//         // ),),
//       ),

//       body:
//           // Wrap(
//           // child:
//           GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 4.0,
//         mainAxisSpacing: 10.0,
//         children: [
//           Card(
//             color: Colors.amberAccent[200],
//             child: InkWell(
//               onTap: () {
//                 print("the button taped");
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: SweepGradient(
//                     colors: [Colors.pink, Colors.blue, Colors.green],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Card(
//             color: Colors.purple[500],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//                 topLeft: Radius.circular(60),
//                 topRight: Radius.circular(70),
//               ),
//             ),
//           ),
//           Card(
//             color: Colors.purple[500],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//                 topLeft: Radius.circular(60),
//                 topRight: Radius.circular(70),
//               ),
//             ),
//           ),
//           Card(
//             color: Colors.purple[500],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//                 topLeft: Radius.circular(60),
//                 topRight: Radius.circular(70),
//               ),
//             ),
//           ),
//         ],
//       ),
//       // )
//     );
//   }
// }

// // class Example extends StatelessWidget {
// //   const Example({Key key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //          body:  ConnectionStatusBars(),
// //     );
// //   }
// // }

// // AFTER ADDING THE BACKGROUND IMAGE THE CODE FOR TEMP;

// // import 'dart:ffi';

// // import 'package:flutter/material.dart';

// // class Branch extends StatefulWidget {
// //   const Branch({Key key}) : super(key: key);

// //   @override
// //   _BranchState createState() => _BranchState();
// // }

// // class _BranchState extends State<Branch> {
// //   // get decoration => null;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //       // backgroundColor: Colors.blue[200],
// //     body:
// //     // Container(child: widget(child: Image.asset("assets/images/hb.jpg" ,fit: BoxFit.cover,)),),
// //     Container(
// //       decoration: BoxDecoration(
// //         image: DecorationImage(image: AssetImage("assets/images/hb.jpg"),fit: BoxFit.fill),

// //       ),
// //     ),

// //       // body: Padding(
// //       //   padding: EdgeInsets.only(top: 25, right: 20, left: 20),
// //       //   child: Wrap(
// //       //     spacing: 15,
// //       //     runSpacing: 15,
// //       //     direction: Axis.horizontal,
// //       //     alignment: WrapAlignment.center,
// //       //     children: [

// //       //       Container(

// //       //         padding: EdgeInsets.all(10),

// //       //         height: 250,
// //       //         width: 150,
// //       //         decoration: roundedRct(10,10,50,20),
// //       //         // color: Colors.black ,

// //       //         // child: Container(
// //       //         // decoration: BoxDecoration(
// //       //         //   gradient: LinearGradient(
// //       //         //     colors: [Colors.pink, Colors.blue, Colors.green],
// //       //         //   ),
// //       //         // ),
// //       //       ),
// //       //       Container(
// //       //         padding: EdgeInsets.all(10),
// //       //         height: 150,
// //       //         width: 150,
// //       //         decoration: roundedRct(10, 10, 20, 50),
// //       //         // decoration: BoxDecoration(

// //       //         //     color: Colors.white,
// //       //         //     gradient: LinearGradient(
// //       //         //       colors: [Colors.pink, Colors.blue, Colors.green],
// //       //         //     ),
// //       //         //     // borderRadius: BorderRadius.only(topRight: Radius.circular(60))

// //       //         //     ),
// //       //       ),
// //       //       Container(
// //       //         padding: EdgeInsets.all(10),
// //       //         height: 150,
// //       //         width: 150,
// //       //         decoration: roundedRct(10, 10, 20, 50),
// //       //         // decoration: BoxDecoration(
// //       //         //     gradient: SweepGradient(
// //       //         //       colors: [Colors.pink, Colors.blue, Colors.green],
// //       //         //     ),
// //       //         //     borderRadius:
// //       //         //         BorderRadius.only(topRight: Radius.circular(60))),
// //       //       ),
// //       //       Container(
// //       //           padding: EdgeInsets.all(10),

// //       //           height: 150,
// //       //           width: 150,

// //       //           decoration: roundedRct(20.0,20.0,20.0,60.0)
// //       //           ),
// //       //     ],
// //       //   ),
// //       // ),
// //     );
// //   }
// //   Decoration roundedRct( double L, double R, double T, double B){

// //             return BoxDecoration(
// //               color: Colors.deepOrange,
// //               borderRadius: BorderRadius.only(

// //                 bottomLeft: Radius.circular(L),
// //                 bottomRight: Radius.circular(R),
// //                 topLeft: Radius.circular(T),
// //                 topRight: Radius.circular(B),

// //                   ) ,
// //               );

// //   }
// //   // Decoration roundedRct(
// //       // double leftR, double topR, double rightR, double bottomR) {
// //   //   return BoxDecoration(
// //   //       gradient: SweepGradient(
// //   //         colors: [Colors.pink, Colors.blue, Colors.green],
// //   //       ),
// //   //       borderRadius: BorderRadius.only()
// //   //       );
// //   }

// // void _popupDialog(BuildContext context) {
// //   showDialog(
// //       context: context,
// //       builder: (context) {
// //         return AlertDialog();
// //       });
// // }
