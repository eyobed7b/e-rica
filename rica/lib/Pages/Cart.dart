import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}
class _CartPageState extends State <CartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("Rica Zembil"),
     ),
      body: Center(
        child: Image.asset("images/logo.png", height: MediaQuery.of(context).size.height/4, width: MediaQuery.of(context).size.width/4 ,),
      ),
    );
  }
}