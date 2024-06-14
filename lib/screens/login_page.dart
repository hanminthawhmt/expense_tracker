import 'package:expense_tracker/components/login_reg_button.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/screens/landing_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  title: 'Log in',
                  buttonColor: Colors.lightBlueAccent,
                  whenOnPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPage()));
                  }),
              TextButton(
                onPressed: () {},
                child: Text('Forgot password'),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
