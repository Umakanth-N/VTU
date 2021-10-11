import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vtu/CSE/3rd%20sem.dart';
import 'package:vtu/Features/ad_helper.dart';
import 'package:vtu/Home/Shortcode.dart';

class CseHome extends StatefulWidget {
  const CseHome({Key key}) : super(key: key);

  @override
  _CseHomeState createState() => _CseHomeState();
}

class _CseHomeState extends State<CseHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bck0.JPG'),
                    fit: BoxFit.fill),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
// 3RD SEM Subjects
                  expansionTile(
                      expText: 'CSE 3rd SEM',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                          listTileText: "DS",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.book,
                          c: Colors.blue[200],
                          navigator: DS(),
                        ),
                        listoftiles(
                          listTileText: "ADE",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.book,
                          c: Colors.blue[200],
                          navigator: ADE(),
                        ),
                        listoftiles(
                          listTileText: "CO",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.book,
                          c: Colors.blue[200],
                          navigator: CO(),
                        ),
                        listoftiles(
                          listTileText: "SE",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.book,
                          c: Colors.blue[200],
                          navigator: SE(),
                        ),
                        listoftiles(
                          listTileText: "DMS",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.book,
                          c: Colors.blue[200],
                          navigator: DMS(),
                        ),
                      ]),
                  //    Container(
                  //   child: AdWidget(
                  //     ad: BannerAds.getBannerAd()..load(),
                  //     key: UniqueKey(),
                  //   ),
                  //   height: 50,
                  // ),

                  // 4TH SEM Subject
                  expansionTile(
                      expText: 'CSE 4TH SEM',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                            listTileText: "DAA",
                            listTileTextColor: Colors.white,
                            listTileIcon: Icons.book,
                            c: Colors.blue[200],
                            navigator: null),
                        listoftiles(
                            listTileText: "OS",
                            listTileTextColor: Colors.white,
                            listTileIcon: Icons.book,
                            c: Colors.blue[200],
                            navigator: null),
                        listoftiles(
                            listTileText: "ME",
                            listTileTextColor: Colors.white,
                            listTileIcon: Icons.book,
                            c: Colors.blue[200],
                            navigator: null),
                        listoftiles(
                            listTileText: "OOC",
                            listTileTextColor: Colors.white,
                            listTileIcon: Icons.book,
                            c: Colors.blue[200],
                            navigator: null),
                        listoftiles(
                            listTileText: "DC",
                            listTileTextColor: Colors.white,
                            listTileIcon: Icons.book,
                            c: Colors.blue[200],
                            navigator: null),
                      ]),
                  //5Th SEM Subjects
                  // expansionTile(
                  //     expText: 'CSE 5TH SEM',
                  //     expTextColor: Colors.white,
                  //     gradintColSquarBrace: [
                  //       Colors.amber,
                  //       Colors.orange
                  //     ],
                  //     childrenSquarBrace: [
                  //       listoftiles(
                  //           listTileText: "ADE",
                  //           listTileTextColor: Colors.white,
                  //           listTileIcon: Icons.book,
                  //           c: Colors.blue[200],
                  //           navigator: null),
                  //     ]),
                  // 6Th SEM Subjects
                  // expansionTile(
                  //     expText: 'CSE 6TH SEM',
                  //     expTextColor: Colors.white,
                  //     gradintColSquarBrace: [
                  //       Colors.amber,
                  //       Colors.orange
                  //     ],
                  //     childrenSquarBrace: [
                  //       listoftiles(
                  //           listTileText: "ADE",
                  //           listTileTextColor: Colors.white,
                  //           listTileIcon: Icons.book,
                  //           c: Colors.blue[200],
                  //           navigator: null),
                  //     ]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        child: AdWidget(
          ad: BannerAds.getBannerAd()..load(),
          key: UniqueKey(),
        ),
        height: 50,
      ),
    );
  }
}
