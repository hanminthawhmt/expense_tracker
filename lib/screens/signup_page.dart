import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/screens/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/login_reg_button.dart';
import '../components/my_button.dart';
import '../components/square_button.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? email;
  String? password;
  String? username;
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  void registerNewUser() async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email!, password: password!);
      if (newUser != null) {
        _firestore
            .collection('User Data')
            .doc(newUser.user?.email)
            .set({'username': username});
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LandingPage()));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 25, left: 25, top: 50),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/applogo.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Username'),
                  onChanged: (value) {
                    username = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
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
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Password'),
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    buttonTitle: 'Register',
                    buttonColor: Colors.black54,
                    whenOnTap: registerNewUser),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareButton(imagePath: 'images/google.png'),
                    SizedBox(
                      width: 20,
                    ),
                    SquareButton(imagePath: 'images/apple.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?  ',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Login Here',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.grey[600]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// try {
// final newUser =
// await _auth.createUserWithEmailAndPassword(
// email: email!, password: password!);
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => LandingPage()));
// } catch (e) {
// print(e);
// }
