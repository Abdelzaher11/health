import 'package:flutter/material.dart';
import 'package:health_version_1_0_1/pages/home.dart';
import 'package:health_version_1_0_1/pages/status.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

// ignore: use_key_in_widget_constructors
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      imageBackground: const AssetImage('assets/splash.jpg'),
      loaderColor: Colors.transparent,
      loadingText: const Text(
        'Welcome',
        style: TextStyle(
          color: Colors.white,
          fontSize: 19,
          letterSpacing: 0.8,
        ),
      ),
      navigateAfterSeconds: Status(),
    );
  }
}
