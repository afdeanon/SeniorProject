import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:social_workout_app/image.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            // margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'Email Address'),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              validator: (value) {
                if (value == null ||
                    value.trim().isEmpty ||
                    !value.contains('@')) {
                  return 'Please enter a valid email address.';
                }
              },
              onSaved: (value) {},
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            // margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.trim().length < 6) {
                    return 'Password must ne at least 6 characters long';
                  }
                  return null;
                },
                onSaved: (value) {}),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text("Forgot password?"))),
          Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenWidth, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Sign In",
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Create a new account",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
