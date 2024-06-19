import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

class ProfilePage extends StatelessWidget {
  final String? profileEmail;
  final String? profileName;
  ProfilePage({
    required this.profileEmail,
    required this.profileName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person,
              size: 50,
            ),
            radius: 80,
            backgroundColor: Colors.grey,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    profileName!,
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(
                  //     Icons.edit,
                  //     size: 20,
                  //     color: Colors.grey,
                  //   ),
                  // )
                ],
              ),
              Text(
                profileEmail!,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Card(
                child: Text('About Us'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Change Theme')),
              TextButton(
                  onPressed: () {
                    _auth.signOut();
                    Navigator.pop(context);
                  },
                  child: Text('Log out')),
            ],
          )
        ],
      ),
    );
  }
}
