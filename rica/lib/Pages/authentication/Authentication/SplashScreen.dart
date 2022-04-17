import 'dart:async';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rica/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
  var _id = null;
  late User user;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
  //  Navigator.of(context).pushReplacementNamed("SIGN_IN");
    if (FirebaseAuth.instance.currentUser == null) {
      Navigator.of(context).pushReplacementNamed("SIGN_IN");
    } else {
      Navigator.of(context).pushReplacementNamed("bottom_nav");
    }
    // _id == null
    //     ? Navigator.of(context).pushReplacementNamed(SIGN_IN)
    //     : getUserInformation(_id);

    // Navigator.of(context).pushReplacementNamed(SIGN_IN);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
        child: Image.asset(
          "images/logo.png",
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width  / 3,
        ),
      ),
      Text("Rica Gebeya", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      )
    );
  }
}
