import 'package:expense_tracker/screens/landing_page.dart';
import 'package:flutter/material.dart';
import '../components/login_reg_button.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  title: 'Register',
                  buttonColor: Colors.lightBlue,
                  whenOnPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email!, password: password!);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    } catch (e) {
                      print(e);
                    }
                  }),
            ],
          ),
        ],
      ),
    ));
  }
}
