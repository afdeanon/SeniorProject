import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/rankingScreen.dart';
import 'package:social_workout_app/screens/authScreens/logInScreen.dart';
import 'package:social_workout_app/screens/profileScreens/profileScreen.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/workoutScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, User? user}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> get _widgetOptions => [
        RankingScreen(),
        WorkoutScreen(),
        ProfileScreen(),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: "Ranking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Workout",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
