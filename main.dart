import 'package:flutter/material.dart';
import 'package:fbtest2/facebook.dart';




void main() => runApp(MaterialApp(home: NewApp()));

class NewApp extends StatefulWidget {
 
  @override
  _NewAppState createState() => _NewAppState();
 }

 class _NewAppState extends State<NewApp> {
 
 
 final showAd = AdsPageState();  /// calls Class AdsPageState from facebook.dart. 
 void inters(){                     // the class AdsPageState has function showInterstitialAd
   showAd.showInterstitialAd();     // function showInterstitialAd infered as void inters in this file
 }
 
 // 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Center(
        child: RaisedButton(
          color: Colors.redAccent,
          onPressed:inters,                  // supposed to initiate here once I press the red button, check debug console.
                                             // its not working as I wanted. You can re do it your way. 
        ),
      ),
    );
  }
}
