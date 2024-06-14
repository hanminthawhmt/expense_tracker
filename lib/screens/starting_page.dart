import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/screens/login_page.dart';
import 'package:expense_tracker/screens/signup_page.dart';
import 'package:flutter/material.dart';
import '../components/login_reg_button.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 30, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                LoginRegButton(
                    title: 'Log in',
                    buttonColor: Colors.lightBlueAccent,
                    whenOnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    }),
                LoginRegButton(
                    title: 'Register',
                    buttonColor: Colors.lightBlue,
                    whenOnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignupPage();
                      }));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
