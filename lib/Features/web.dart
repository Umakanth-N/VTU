import 'dart:io';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

import 'ad_helper.dart';

class WebPage extends StatefulWidget {
  final String uri;
  const WebPage({Key key, this.uri}) : super(key: key);

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://znap.link/Rocktech',
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
