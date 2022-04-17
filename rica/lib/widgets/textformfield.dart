import 'package:flutter/material.dart';

 import './responsive_ui.dart';



class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? icon;
  

  CustomTextField({
    this.hint,
    this.textEditingController,
    this.keyboardType,
    this.icon,
    this.obscureText,
  });


  @override
  Widget build(BuildContext context) {
    double?_width;
  double _pixelRatio;
  bool large;
  bool medium;

    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: large ? 12 : (medium ? 10 : 8),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: textEditingController,
        keyboardType: keyboardType,
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color:Theme.of(context).colorScheme.secondary, size: 20),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
