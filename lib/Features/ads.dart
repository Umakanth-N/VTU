import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vtu/Features/ad_helper.dart';

// import 'ad_helper.dart';

class EXamole extends StatelessWidget {
  const EXamole({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: AdWidget(
        ad: BannerAds.getBannerAd()..load(),
        key: UniqueKey(),
      ),
    );
  }
}




// import 'package:vtu/Features/ad_helper.dart';



// // class HomeScreen extends StatelessWidget {
// //   const HomeScreen({ Key key }) : super(key: key);

// //   @override
// //    void initState() {
// //     myBanner.load();
// //     super.initState();
// //   }

// //   final Container adContainer = Container(
// //     alignment: Alignment.center,
// //     child: adWidget,
// //     width: myBanner.size.width.toDouble(),
// //     height: myBanner.size.height.toDouble(),
// //      myBanner.load();
    
// //   );
// //   @override
// //     void dispose() {
// //     super.dispose();
// //   }
// //   Widget build(BuildContext context) {
// //     return Scaffold(
      
// //     );
// //   }






// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     myBanner.load();
//     super.initState();
//   }


//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [                        
//                       adContainer,
//                     ],
//                   ),
//                ),
//             );
//   }
// }

//   final Container adContainer = Container(
//     alignment: Alignment.center,
//     child: adWidget,
//     width: myBanner.size.width.toDouble(),
//     height: myBanner.size.height.toDouble(),
//     //  myBanner.load(),
//     //  initState<void> load()
   
//   );

 

















// // import 'package:flutter/material.dart';
// // import 'package:google_mobile_ads/google_mobile_ads.dart';

// // class ADSInAPP extends StatefulWidget {
  
// //   // const ADSInAPP({ Key key }) : super(key: key);

// //   @override
// //   _ADSInAPPState createState() => _ADSInAPPState();
// // }

// // class _ADSInAPPState extends State<ADSInAPP> {
  
// //   // ignore: non_constant_identifier_names
// //   final String AdId = "ca-app-pub-3940256099942544/6300978111";
// //   BannerAd _ad;
// //   bool isLoded;

// //   @override
// //   initState() {
// //     super.initState();
// //     _ad = BannerAd(
// //       adUnitId: AdId,
// //       request: AdRequest(),
// //       size: AdSize.banner,
// //       listener: BannerAdListener(
// //         onAdLoaded: (_) {
// //           setState(() {
// //             isLoded = true;
// //           });
// //         },
// //         onAdFailedToLoad: (_, error) {
// //           print("Ad Faild To Load with ERROR:$error");
// //         },
// //       ),
// //     );

// //     _ad.load();
// //   }

// //   @override
// //   void dispose() {
// //     _ad?.dispose();
// //     super.dispose();
// //   }

// //   Widget checkForAd(Future<void> load) {
// //     if (isLoded == true) {
// //       return Container(
// //         child: AdWidget(
// //           ad: _ad,
// //         ),
// //         width: _ad.size.width.toDouble(),
// //         alignment: Alignment.bottomRight,
// //       );
// //     } else {
// //       return SizedBox(
// //           height: 10, width: 10, child: CircularProgressIndicator());
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.grey[50],
// //         title: Center(
// //           child: Text(
// //             "Umakanth",
// //             style: TextStyle(
// //               color: Colors.deepOrange[300],
// //               fontSize: 20,
// //             ),
// //           ),
// //         ),
// //       ),

// //       backgroundColor: Colors.blue[100],
// //       // body: SafeArea(
// //       //   child: SingleChildScrollView(
// //       //     child: Container(
// //       //       child: Center(
// //       //         child: Column(mainAxisAlignment: MainAxisAlignment.end,
// //       //             //  color: Colors.blue[100],

// //       //             children: [
// //       //               SizedBox(
// //       //                 child: Text(
// //       //                   "Data",
// //       //                   style: TextStyle(color: Colors.deepOrange[300]),
// //       //                 ),
// //       //                 height: 55,
// //       //                 width: 55,
// //       //               ),
// //       //               Text("umakanth"),
// //       //             ]),
// //       //       ),
// //       //     ),
// //       //   ),
// //       // ),
// //       bottomNavigationBar: (checkForAd(_ad.load())),
// //     );
// //   }
// // }




