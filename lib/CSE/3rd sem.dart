import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vtu/Features/Pdf.dart';
import 'package:vtu/Features/ad_helper.dart';
import 'package:vtu/Home/Shortcode.dart';

// class CSE3SEM extends StatefulWidget {
//   const CSE3SEM({Key key}) : super(key: key);

//   @override
//   _CSE3SEMState createState() => _CSE3SEMState();
// }

// class _CSE3SEMState extends State<CSE3SEM> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/bck0.JPG'),
//                     fit: BoxFit.fill),
//               ),
//             ),
//             Column(
//               children: [
// // 3RD SEM Subject
//                 expansionTile(
//                     expText: 'CSE 3rd SEM',
//                     expTextColor: Colors.white,
//                     gradintColSquarBrace: [
//                       Colors.amber,
//                       Colors.orange
//                     ],
//                     childrenSquarBrace: [
//                       listoftiles(
//                         listTileText: "DS",
//                         listTileIcon: Icons.book,
//                         navigator: null,
//                       ),
//                       Container(
//                         child: AdWidget(
//                           ad: BannerAds.getBannerAd()..load(),
//                           key: UniqueKey(),
//                         ),
//                         height: 50,
//                       ),
//                     ]),
//                 Container(
//                   child: AdWidget(
//                     ad: BannerAds.getBannerAd()..load(),
//                     key: UniqueKey(),
//                   ),
//                   height: 50,
//                 ),

//                 // 3RD SEM Subject
//                 expansionTile(
//                     expText: 'CSE 4th SEM',
//                     expTextColor: Colors.white,
//                     gradintColSquarBrace: [
//                       Colors.amber,
//                       Colors.orange
//                     ],
//                     childrenSquarBrace: [
//                       listoftiles(
//                         listTileText: "  ",
//                         listTileIcon: Icons.book,
//                         c: Colors.blue[200],

//                         navigator: PDFView(
//                           uri:
//                               'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
//                         ),
//                         // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
//                       ),
//                     ]),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DS extends StatelessWidget {
  const DS({Key key}) : super(key: key);

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
            // Module Notes
                  expansionTile(
                      expText: 'DS Note',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                          listTileText: "Module-1",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri: 
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-2",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-3",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-4",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileTextColor: Colors.white,
                          listTileText: "Module-5",
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                      ]),
                  Container(
                    child: AdWidget(
                      ad: BannerAds.getBannerAd()..load(),
                      key: UniqueKey(),
                    ),
                    height: 50,
                  ),
            
            //Qustion Papers
                  expansionTile(
                      expText: 'DS Oustion Papers',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        Text(
                          'This is Test App',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                        // listoftiles(
                        //   listTileText: "  ",
                        //   listTileIcon: Icons.book,
                        //   c: Colors.blue[200],
            
                        //   navigator: PDFView(
                        //     uri:
                        //         'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        //   ),
                        //   // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        // ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ADE extends StatelessWidget {
  const ADE({Key key}) : super(key: key);

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
            // Module Notes
                  expansionTile(
                      expText: 'ADE Note',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                          listTileText: "Module-1",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-2",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-3",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-4",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileTextColor: Colors.white,
                          listTileText: "Module-5",
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                      ]),
                  Container(
                    child: AdWidget(
                      ad: BannerAds.getBannerAd()..load(),
                      key: UniqueKey(),
                    ),
                    height: 50,
                  ),
            
            //Qustion Papers
                  expansionTile(
                      expText: 'ADE Oustion Papers',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        Text(
                          'This is Test App',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                        // listoftiles(
                        //   listTileText: "  ",
                        //   listTileIcon: Icons.book,
                        //   c: Colors.blue[200],
            
                        //   navigator: PDFView(
                        //     uri:
                        //         'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        //   ),
                        //   // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        // ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CO extends StatelessWidget {
  const CO({Key key}) : super(key: key);

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
            // Module Notes
                  expansionTile(
                      expText: 'CO Note',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                          listTileText: "Module-1",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-2",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-3",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-4",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileTextColor: Colors.white,
                          listTileText: "Module-5",
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                      ]),
                  Container(
                    child: AdWidget(
                      ad: BannerAds.getBannerAd()..load(),
                      key: UniqueKey(),
                    ),
                    height: 50,
                  ),
            
            //Qustion Papers
                  expansionTile(
                      expText: 'CO Oustion Papers',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        Text(
                          'This is Test App',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                        // listoftiles(
                        //   listTileText: "  ",
                        //   listTileIcon: Icons.book,
                        //   c: Colors.blue[200],
            
                        //   navigator: PDFView(
                        //     uri:
                        //         'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        //   ),
                        //   // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        // ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SE extends StatelessWidget {
  const SE({Key key}) : super(key: key);

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
            // Module Notes
                  expansionTile(
                      expText: 'SE Note',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        listoftiles(
                          listTileText: "Module-1",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-2",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-3",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileText: "Module-4",
                          listTileTextColor: Colors.white,
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                        listoftiles(
                          listTileTextColor: Colors.white,
                          listTileText: "Module-5",
                          listTileIcon: Icons.picture_as_pdf,
                          navigator: PDFView(
                            uri:
                                'http://www.africau.edu/images/default/sample.pdf',
                          ),
                        ),
                      ]),
                  Container(
                    child: AdWidget(
                      ad: BannerAds.getBannerAd()..load(),
                      key: UniqueKey(),
                    ),
                    height: 50,
                  ),
            
            //Qustion Papers
                  expansionTile(
                      expText: 'SE Oustion Papers',
                      expTextColor: Colors.white,
                      gradintColSquarBrace: [
                        Colors.amber,
                        Colors.orange
                      ],
                      childrenSquarBrace: [
                        Text(
                          'This is Test App',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                        // listoftiles(
                        //   listTileText: "  ",
                        //   listTileIcon: Icons.book,
                        //   c: Colors.blue[200],
            
                        //   navigator: PDFView(
                        //     uri:
                        //         'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        //   ),
                        //   // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                        // ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DMS extends StatelessWidget {
  const DMS({Key key}) : super(key: key);

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
// Module Notes
                expansionTile(
                    expText: 'DMS Note',
                    expTextColor: Colors.white,
                    gradintColSquarBrace: [
                      Colors.amber,
                      Colors.orange
                    ],
                    childrenSquarBrace: [
                      listoftiles(
                        listTileText: "Module-1",
                        listTileTextColor: Colors.white,
                        listTileIcon: Icons.picture_as_pdf,
                        navigator: PDFView(
                          uri:
                              'http://www.africau.edu/images/default/sample.pdf',
                        ),
                      ),
                      listoftiles(
                        listTileText: "Module-2",
                        listTileTextColor: Colors.white,
                        listTileIcon: Icons.picture_as_pdf,
                        navigator: PDFView(
                          uri:
                              'http://www.africau.edu/images/default/sample.pdf',
                        ),
                      ),
                      listoftiles(
                        listTileText: "Module-3",
                        listTileTextColor: Colors.white,
                        listTileIcon: Icons.picture_as_pdf,
                        navigator: PDFView(
                          uri:
                              'http://www.africau.edu/images/default/sample.pdf',
                        ),
                      ),
                      listoftiles(
                        listTileText: "Module-4",
                        listTileTextColor: Colors.white,
                        listTileIcon: Icons.picture_as_pdf,
                        navigator: PDFView(
                          uri:
                              'http://www.africau.edu/images/default/sample.pdf',
                        ),
                      ),
                      listoftiles(
                        listTileTextColor: Colors.white,
                        listTileText: "Module-5",
                        listTileIcon: Icons.picture_as_pdf,
                        navigator: PDFView(
                          uri:
                              'http://www.africau.edu/images/default/sample.pdf',
                        ),
                      ),
                    ]),
                Container(
                  child: AdWidget(
                    ad: BannerAds.getBannerAd()..load(),
                    key: UniqueKey(),
                  ),
                  height: 50,
                ),

//Qustion Papers
                expansionTile(
                    expText: 'DMS Oustion Papers',
                    expTextColor: Colors.white,
                    gradintColSquarBrace: [
                      Colors.amber,
                      Colors.orange
                    ],
                    childrenSquarBrace: [
                      Text(
                        'This is Test App',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                      // listoftiles(
                      //   listTileText: "  ",
                      //   listTileIcon: Icons.book,
                      //   c: Colors.blue[200],

                      //   navigator: PDFView(
                      //     uri:
                      //         'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                      //   ),
                      //   // uri:'https://drive.google.com/uc?export=view&id=1lsOdGEgK9uYpg2x6hoVeG_qSKhVU_JYW',
                      // ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
