import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:health_version_1_0_1/pages/home.dart';
import 'package:health_version_1_0_1/pages/status.dart';
// ignore: import_of_legacy_library_into_null_safe

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
    return AnimatedSplashScreen(
      animationDuration: const Duration(seconds: 5),
      backgroundColor: Colors.black,
      splash: 'assets/splash.jpg',
      splashIconSize: 500,
      nextScreen: Status(),
    );
  }
}
