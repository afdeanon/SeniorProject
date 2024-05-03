// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';
import 'package:social_workout_app/screens/rankingScreen.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/workoutScreen.dart';
import 'package:social_workout_app/screens/profileScreens/profileScreen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final GlobalKey<NavigatorState> navigatorKey;

  CustomBottomNavigationBar({required this.currentIndex, required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.add_chart),
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
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            navigatorKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) => RankingScreen()));
            break;
          case 1:
            navigatorKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) => WorkoutScreen()));
            break;
          case 2:
            navigatorKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) => ProfileScreen()));
            break;
        }
      },
    );
  }
}