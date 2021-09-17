import 'dart:async';

import 'package:flutter/material.dart';
import 'package:space_x/features/feature_navigation_drawer/pages/main_menu_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
      super.initState();
      Timer(Duration(seconds: 2), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => MainMenu()));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/space_x_2.png"),
          ),
        ) /* add child content here */,
      ),
    );
  }
}
