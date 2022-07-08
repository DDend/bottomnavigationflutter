import 'package:diskominfo/pages/homepage.dart';
import 'package:diskominfo/pages/infopage.dart';
import 'package:diskominfo/pages/user.dart';
import 'package:flutter/material.dart';
import 'package:diskominfo/main.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    MyHomePage2(),
    MyInfoPage(),
    MyUserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple, // <-- This works for fixed
        selectedItemColor: Color.fromARGB(255, 255, 174, 228),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Info"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "User"),
        ],
      ),
    );
  }
}
