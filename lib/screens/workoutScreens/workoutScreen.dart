import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/workoutScreens/horizontalDayListState.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 10),
            alignment: Alignment.centerLeft,
            width: screenWidth, //screen width
            decoration: BoxDecoration(color: Color(0xFF558CE0)),
            child: const Column(
              children: [
                SizedBox(height: 100),
                Text(
                  'April 2024',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10),
                HorizontalDayList(),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  /**
   * Container(
width: 393,
height: 237,
decoration: BoxDecoration(color: Color(0xFF558CE0)),
)
   */
}
