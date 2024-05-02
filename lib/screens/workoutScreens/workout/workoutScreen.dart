import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/horizontalDayListState.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/routineGridView.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

List<List<String>> todoInformation = [
  ["Hello", "Hello"]
];

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 6, 10, 10),
          alignment: Alignment.centerLeft,
          width: screenWidth, //screen width
          decoration: const BoxDecoration(color: Color(0xFF558CE0)),
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
        Container(
          padding: const EdgeInsets.fromLTRB(35, 6, 10, 35),
          alignment: Alignment.centerLeft,
          child: const Column(children: [
            //32-6
            Text(
              'Routines',
              style: TextStyle(
                color: Color(0xFF343434),
                fontSize: 20,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ]),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Create a new routne"))
      ]),
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
