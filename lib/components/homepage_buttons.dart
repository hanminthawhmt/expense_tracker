import 'package:flutter/material.dart';

class HPButtons extends StatelessWidget {
  HPButtons({@required this.imageLoc, @required this.buttonTitle});
  String? buttonTitle;
  Image? imageLoc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: imageLoc!,
          ),
          Text(buttonTitle!),
        ],
      ),
    );
  }
}
