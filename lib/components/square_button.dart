import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String? imagePath;
  const SquareButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        imagePath!,
        height: 50,
      ),
    );
  }
}
