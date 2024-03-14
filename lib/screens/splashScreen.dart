import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_workout_app/image.dart';
import 'package:social_workout_app/screens/authScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<AuthScreen> _getStarted() async {
    print('get started');
    return const AuthScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            SImages.runningImage,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(left: 50),
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: const Text(
              "App Name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 230),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Work out socially",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                );
              },
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              // ),
              child: const Text(
                "Get Started  >",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    )));
  }
}


// class CustomClipPath extends CustomClipper<Path> {
//   var radius = 5.0;
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     Path path = Path();
//     path.lineTo(0, h);
//     path.quadraticBezierTo(w * 0.2, h - 300, w, h);
//     path.lineTo(w, 0);
//     //path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
