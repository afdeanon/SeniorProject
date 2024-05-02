import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/authScreens/authScreen.dart';
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
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  List<Widget> get _widgetOptions => [
    RankingScreen(),
    WorkoutScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    navigatorKey.currentState?.popUntil((route) => route.isFirst);  // Pop to the first screen in the stack
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => _widgetOptions.elementAt(_selectedIndex),
          );
        },
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
