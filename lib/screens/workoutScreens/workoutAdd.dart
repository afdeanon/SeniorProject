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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 393,
            height:171,
            decoration: BoxDecoration(color:Theme.of(context).colorScheme.primary),
            child: const Text("Workout"),
          )
        ],
      ),
    );
  }
}
