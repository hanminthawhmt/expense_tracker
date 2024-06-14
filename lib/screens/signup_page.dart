import 'package:flutter/material.dart';

import '../components/login_reg_button.dart';
import '../constants.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Image(
              image: AssetImage('images/applogo.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: kTextFieldDecoration.copyWith(hintText: 'Gmail'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
              ),
              SizedBox(
                height: 10,
              ),
              LoginRegButton(
                  title: 'Register',
                  buttonColor: Colors.lightBlue,
                  whenOnPressed: () {}),
            ],
          ),
        ],
      ),
    ));
  }
}
