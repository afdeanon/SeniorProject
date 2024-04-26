import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(children: [
          Container(
            width: 393,
            height: 237,
            decoration: BoxDecoration(color: Color(0xFF558CE0)),
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
