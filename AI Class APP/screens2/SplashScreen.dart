import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';
import 'login.dart';

const splashIMG = "assets/images/splashIMG.svg";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  fistTime() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var loginORhome = preferences.getString("id");
    loginORhome == null
        ? Timer(
            Duration(seconds: 3),
            () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login())))
        : Timer(
            Duration(seconds: 3),
            () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  void initState() {
    fistTime();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                splashIMG,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "Smart School ",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
