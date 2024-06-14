import 'package:flutter/material.dart';
import '../constants.dart';

class LoginRegButton extends StatelessWidget {
  final String? title;
  final Color? buttonColor;
  final Function()? whenOnPressed;
  LoginRegButton(
      {required this.title,
      required this.whenOnPressed,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: whenOnPressed,
      child: Text(
        title!,
        style: kButtonTextStyle,
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor!),
          elevation: MaterialStatePropertyAll(5.0)),
    );
  }
}
