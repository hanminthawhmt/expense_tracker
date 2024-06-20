import 'package:flutter/material.dart';
import '../constants.dart';

class MyButton extends StatelessWidget {
  final String? buttonTitle;
  final Color? buttonColor;
  final Function() whenOnTap;
  const MyButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonColor,
      required this.whenOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenOnTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: double.infinity,
        child: Text(
          buttonTitle!,
          textAlign: TextAlign.center,
          style: kButtonTextStyle,
        ),
        decoration: BoxDecoration(
            color: buttonColor!, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
