import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/responsive_ui.dart';

class AccountPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<AccountPage> {
  late double _height;
  late double _width;
  late double _pixelRatio;
  late bool _large;
  late bool _medium;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile  of ${ FirebaseAuth.instance.currentUser!.email}"),
      ),
      body: Center(
          child: RaisedButton(
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        onPressed: () async {
          signOut(context);
        },
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.1,
          width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 216, 78, 24),
                Color.fromARGB(255, 173, 79, 11),
                Color.fromARGB(255, 154, 70, 9),
                Color.fromARGB(255, 44, 20, 2),
              ],
            ),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Text('SIGN OUT',
              style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10))),
        ),
      )),
    );
  }

  Future<void> signOut(context) async {
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed("SIGN_IN");
  }
}
