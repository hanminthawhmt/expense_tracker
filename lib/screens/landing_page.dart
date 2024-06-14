import 'package:expense_tracker/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'analyst_page.dart';
import 'home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPageIndex = 0;
  final List<String> appbarTitle = ['Home', 'Analyst', 'Profile'];
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
                icon: Icon(Icons.bar_chart), label: 'Analyst'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ],
        ),
        body: <Widget>[
          HomePage(),
          AnalystPage(),
          ProfilePage(),
        ][currentPageIndex]);
  }
}
