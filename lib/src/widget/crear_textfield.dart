import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;

  const CustomTextField({Key key, this.labelText, this.obscureText = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        decoration: new InputDecoration(
            focusColor: Color(0xff5F1DFC),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black),
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(50.0),
              ),
            )));
  }
}
