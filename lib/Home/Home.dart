import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vtu/CSE/CSE_Home.dart';
import 'package:vtu/Features/Connectivity.dart';
import 'package:vtu/Features/ad_helper.dart';
import 'package:vtu/Features/web.dart';

import 'package:vtu/Maths/Maths_Home.dart';

import 'Shortcode.dart';

class Branch extends StatefulWidget {
  const Branch({Key key}) : super(key: key);

  @override
  _BranchState createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  @override
  Widget build(BuildContext context) {
    Offline();
// Aleart BOX for Exit aleart 
    return WillPopScope(
      onWillPop: () async {
        return (await showDialog(
                barrierDismissible: false,
                barrierColor: Colors.orange[200],
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Are you sure',
                      style: TextStyle(fontSize: 25),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(fontSize: 25),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'NO',
                            style: TextStyle(fontSize: 25),
                          ))
                    ],
                  );
                })) ??
            false;
      },
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Testing App',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          actions: [
            // Align(alignment: Alignment.topRight,),
            IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {
                  // BannerAds.createRewardAd();
                  // BannerAds.showRewardAd();
                  // Navigator.pushReplacement(context, newRoute)

                  // var ad;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebPage()),
                    // RewardAdsExample(
                    //  BannerAds.showRewardAd(),
                    // BannerAds.showRewardAd(),
                    // )),
                  );
                },
                icon: Icon(
                  Icons.notifications_active_outlined,
                ))
          ],
          backgroundColor: Colors.orange,
          elevation: 10,
        ),
        body: Stack(
          children: [
            // Background Of the Home Page
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hb.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 20,
                  direction: Axis.horizontal,
                  children: [


                    //  Trying to implement Slider to push Ads Frm clg Publish

                    


                    // Container(
                    //   height: 120,
                    //   width: MediaQuery.of(context).size.width,
                    //   color: Colors.greenAccent,
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: [
                    //        Container(
                    //          height: 150,
                    //          width: 150,
                    //         color: Colors.yellow,
                    //         child: Text('Umakanth'),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    

                    // InkWell hear CS branch card;

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CseHome()),
                        );
                      },
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: borderShape(
                            B: 10, L: 10, R: 10, T: 10, bxColor: Colors.orange),
                        child: Column(
                          children: [
                            Icon(
                              Icons.laptop_chromebook_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                            Center(
                                child: Text(
                              "  CSE "
                              "Branch",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),

                    // ignore: todo
                    // TODO  // InkWell for Maths
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MathsHomePage()),
                        );
                        // ConnectionStatusBars();
                      },
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: borderShape(
                            B: 10,
                            L: 10,
                            R: 10,
                            T: 10,
                            bxColor: Colors.deepOrange),
                        child: Column(
                          children: [
                            Center(
                                child: Icon(
                              Icons.account_tree_outlined,
                              size: 50,
                              color: Colors.white,
                            )),
                            Center(
                                child: Text(
                              "MATHS",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          child: AdWidget(
            ad: BannerAds.getBannerAd()..load(),
            key: UniqueKey(),
          ),
          height: 50,
        ),
      ),
    );
  }
}
