import 'package:flutter/material.dart';
import 'dart:async';
import 'loginScreen.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(children: [
      new Image(
        image: new AssetImage("images/splash.jpg"),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white.withOpacity(0.6),
            height: 200,
            alignment: Alignment.center,
            child: new Image(
              image: new AssetImage("images/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ])));
  }
}
