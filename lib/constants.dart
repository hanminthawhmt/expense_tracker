import 'package:flutter/material.dart';

const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.w700,
);

const kTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w700,
  fontFamily: 'Quicksand',
);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
  hintText: 'Value',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black45, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black45, width: 3.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);
