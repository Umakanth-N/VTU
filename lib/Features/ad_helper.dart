import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class BannerAds {
  static initialize() {
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

//Banner Ads Hear
  static String get bannerID {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else
    throw new UnsupportedError("Unsupported platform");
  }
  


  static BannerAd getBannerAd() {
    BannerAd bAd = new BannerAd(
        size: AdSize.banner,
        adUnitId: bannerID,
        listener: BannerAdListener(onAdClosed: (Ad ad) {
          print("Ad Closed");
        }, onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        }, onAdLoaded: (Ad ad) {
          print('Ad Loaded');
        }, onAdOpened: (Ad ad) {
          print('Ad opened');
        }),
        request: AdRequest());

    return bAd;
  }
}

// RewardedAd _rewardedAd;
// void createRewardAd() {
//   RewardedAd.load(
//       adUnitId: 'ca-app-pub-3940256099942544/5224354917',
//       request: AdRequest(),
//       rewardedAdLoadCallback: RewardedAdLoadCallback(
//         onAdLoaded: (RewardedAd ad) {
//           print('$ad loaded.');
//           // Keep a reference to the ad so you can show it later.
//           this._rewardedAd = ad;
//         },
//         onAdFailedToLoad: (LoadAdError error) {
//           print('RewardedAd failed to load: $error');
//         },
//       ));

// void showRewardAd() {
//   _rewardedAd.show(
//       onUserEarnedReward: (RewardedAd ad, RewardItem rewardItem) {
//     print("Adds Reward is ${rewardItem.amount}");
//   });

//   _rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
//     onAdShowedFullScreenContent: (RewardedAd ad) =>
//         print('$ad onAdShowedFullScreenContent.'),
//     onAdDismissedFullScreenContent: (RewardedAd ad) {
//       print('$ad onAdDismissedFullScreenContent.');
//       ad.dispose();
//     },
//     onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
//       print('$ad onAdFailedToShowFullScreenContent: $error');
//       ad.dispose();
//     },
//     onAdImpression: (RewardedAd ad) => print('$ad impression occurred.'),
//   );
// }

class RewardedAdsVideo {
  static initialize() {
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

  // RewardedVideoAd.instance.listener = _onRewardedAdEvent;
  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/8673189370";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/7552160883";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  RewardedAd _rewardedAd;
  void createRewardAd() {
    RewardedAd.load(
        adUnitId: rewardedAdUnitId,
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (RewardedAd ad) {
            print('$ad loaded.');
            // Keep a reference to the ad so you can show it later.
            this._rewardedAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('RewardedAd failed to load: $error');
          },
        ));
  }

  void showRewardAd() {
  _rewardedAd.show(
        onUserEarnedReward: (RewardedAd ad, RewardItem rewardItem) {
      print("Adds Reward is ${rewardItem.amount}");
    });

    _rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) =>
          print('$ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
      },
      onAdImpression: (RewardedAd ad) => print('$ad impression occurred.'),
    );
  }

}

class ET extends StatelessWidget {
  const ET({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // ignore: deprecated_member_use
                FlatButton.icon(
                    onPressed: () {
                      // RewardedAdsVideo.showRewardAd();
                      // _rewardedAd.show(onUserEarnedReward: (RewardedAd ad, RewardItem reward) {  });
                    },
                    icon: Icon(Icons.ac_unit),
                    label: Text('ADS'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
