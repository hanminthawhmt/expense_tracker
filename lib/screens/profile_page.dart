import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String? profileEmail;
  ProfilePage({required this.profileEmail});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        profileEmail!,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
