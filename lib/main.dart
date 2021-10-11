import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Features/Connectivity.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(VtuApp());
}

class VtuApp extends StatelessWidget {
  const VtuApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Offline(),
     
      debugShowCheckedModeBanner: false,
    );
  }
}
