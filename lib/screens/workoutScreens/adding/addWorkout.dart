import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddWorkoutScreen extends StatefulWidget {
  const AddWorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _AddWorkoutScreenState createState() => _AddWorkoutScreenState();
}

class _AddWorkoutScreenState extends State<AddWorkoutScreen> {
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
                    'Add Workout',
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
    );
  }
}
