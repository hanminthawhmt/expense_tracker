import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_tracker/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'analytics_page.dart';
import 'home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

User? loggedInUser;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String? username;
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
    getCurrentUserName();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser;
    if (user != null) {
      loggedInUser = user;

      print(loggedInUser?.email);
      getCurrentUserName();
    }
  }

  void getCurrentUserName() async {
    try {
      if (loggedInUser != null) {
        final userDoc = await _firestore
            .collection('User Data')
            .doc(loggedInUser!.email!)
            .get();
        if (userDoc.exists) {
          setState(() {
            username = userDoc.data()?['username'];
          });
          print(username);
        } else {
          print('No user data found');
        }
      }
    } catch (e) {
      print('Failed to get username: $e');
    }
  }

  int currentPageIndex = 0;
  final List<String> appbarTitle = ['Home', 'Analytics', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(appbarTitle[currentPageIndex]),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.lightBlue,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.lightBlueAccent,
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
                icon: Icon(Icons.bar_chart), label: 'Analytics'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ],
        ),
        body: <Widget>[
          HomePage(),
          AnalyticsPage(),
          ProfilePage(
            profileEmail: loggedInUser?.email,
            profileName: username,
            // profileName: username,
          ),
        ][currentPageIndex]);
  }
}
