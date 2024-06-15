import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String? profileEmail;
  //final String? profileName;
  ProfilePage({
    required this.profileEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person,
              size: 50,
            ),
            radius: 80,
            backgroundColor: Colors.grey,
          ),
          Text(
            'registered username appear here',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            profileEmail!,
            style: TextStyle(color: Colors.black),
          ),
          TextButton(onPressed: () {}, child: Text('Log out'))
        ],
      ),
    );
  }
}
