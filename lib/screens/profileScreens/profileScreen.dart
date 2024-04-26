// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, User? user}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFFFFF),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 259,  // Consider whether you still need a fixed width here
          height: 96,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 96,
                height: 96,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(SImages.runningImage),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              const SizedBox(width: 32),
              const Expanded(  // This will allow the text container to resize dynamically
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Joseph',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w500,
                        height: 0,  // Check if 'height: 0' is necessary as it might cause layout issues
                      ),
                    ),
                    Text(
                      'Clark',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w500,
                        height: 0,  // Check if 'height: 0' is necessary as it might cause layout issues
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: 330,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Your existing containers go here
                Container(
                  width: 330,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 240,
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Color(0xFF343434),
                            fontSize: 20,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(width: 32),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: 330,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 240,
                        child: Text(
                          'My Workouts',
                          style: TextStyle(
                            color: Color(0xFF343434),
                            fontSize: 20,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(width: 32),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 240,
                            child: Text(
                              'Manage Friends',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 20,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 240,
                            child: Text(
                              'About',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 20,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 240,
                            child: Text(
                              'Settings',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 20,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(width: 32),
                        ],
                      ),
                    ),
                // Continue with the remaining containers
              ],
            ),
          ),
        )
      ],
    );
  }
}