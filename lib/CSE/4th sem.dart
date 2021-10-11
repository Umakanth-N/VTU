import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vtu/Features/Pdf.dart';
import 'package:vtu/Features/ad_helper.dart';
import 'package:vtu/Home/Shortcode.dart';

class Cse3Sem extends StatefulWidget {
  const Cse3Sem({Key key}) : super(key: key);

  @override
  _Cse3SemState createState() => _Cse3SemState();
}

class _Cse3SemState extends State<Cse3Sem> {
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
            Column(
              children: [
// 4TH SEM Subject
                expansionTile(
                    expText: 'Umakanth',
                    expTextColor: Colors.white,
                    gradintColSquarBrace: [
                      Colors.amber,
                      Colors.orange
                    ],
                    childrenSquarBrace: [
                      listoftiles(
                        listTileText: "ADE",
                        listTileIcon: Icons.book,
                        c: Colors.blue[200],

                        navigator: PDFView(
                          uri:
                              'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        ),
                        // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                      ),
                      Container(
                        child: AdWidget(
                          ad: BannerAds.getBannerAd()..load(),
                          key: UniqueKey(),
                        ),
                        height: 50,
                      ),
                    ]),
                Container(
                  child: AdWidget(
                    ad: BannerAds.getBannerAd()..load(),
                    key: UniqueKey(),
                  ),
                  height: 50,
                ),

                // 4TH SEM Subject
                expansionTile(
                    expText: 'Umakanth',
                    expTextColor: Colors.white,
                    gradintColSquarBrace: [
                      Colors.amber,
                      Colors.orange
                    ],
                    childrenSquarBrace: [
                      listoftiles(
                        listTileText: "ADE",
                        listTileIcon: Icons.book,
                        c: Colors.blue[200],

                        navigator: PDFView(
                          uri:
                              'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        ),
                        // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
