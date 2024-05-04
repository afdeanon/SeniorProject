import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/workoutScreens/adding/addWorkout.dart';

class AddRoutineScreen extends StatefulWidget {
  const AddRoutineScreen({Key? key, User? user}) : super(key: key);

  @override
  _AddRoutineScreenState createState() => _AddRoutineScreenState();
}

class _AddRoutineScreenState extends State<AddRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 6, 10, 10),
            decoration: const BoxDecoration(color: Color(0xFF558CE0)),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add Routine',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                )
              ],
              //ADD WORKOUT LIST HERE
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddWorkoutScreen()),
          );
        },
        splashColor: Color(0xFF558CE0),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add, size: 50),
      ),
    );
  }
}
