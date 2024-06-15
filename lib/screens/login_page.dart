import 'package:expense_tracker/components/login_reg_button.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  final _auth = FirebaseAuth.instance;
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
                onChanged: (value) {
                  email = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
                onChanged: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              LoginRegButton(
                  title: 'Log in',
                  buttonColor: Colors.lightBlueAccent,
                  whenOnPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email!, password: password!);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    } catch (e) {
                      print(e);
                    }
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
