import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 30, left: 30, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //margin: EdgeInsets.only(bottom: 120),
              child: Image(
                image: AssetImage('images/applogo.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Track Smart, Spend Wise',
                  textAlign: TextAlign.center,
                  style: kTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: kButtonTextStyle,
                  ),
                  style: kButtonStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: kButtonTextStyle,
                  ),
                  style: kButtonStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
