import 'package:expense_tracker/components/my_button.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/screens/landing_page.dart';
import 'package:expense_tracker/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../components/square_button.dart';

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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 25, left: 25, top: 150),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/applogo.png'),
                ),
                SizedBox(
                  height: 20,
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
                    buttonTitle: 'Log in',
                    buttonColor: Colors.black87,
                    whenOnTap: () async {
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
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     Expanded(
                //       child: Divider(
                //         thickness: 0.5,
                //       ),
                //     ),
                //     Text('Or Continue With'),
                //     Expanded(
                //       child: Divider(
                //         thickness: 0.5,
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     SquareButton(imagePath: 'images/google.png'),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     SquareButton(imagePath: 'images/apple.png'),
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You don\'t have an account?  ',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        'Register Here',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black),
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
