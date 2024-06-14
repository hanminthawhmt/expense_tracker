import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ],
        ),
        body: <Widget>[
          Center(
            child: Text(
              'Home Page',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              'Profile Page',
              style: TextStyle(color: Colors.black),
            ),
          )
        ][currentPageIndex]);
  }
}
