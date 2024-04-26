// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
        scaffoldBackgroundColor: const Color(0x00ffffff),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 30),
        SizedBox(
              width: 259,
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
                        image: AssetImage('assets/images/profileImages/default.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(width: 32),
                  const Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joseph',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,  // Reduced font size for better fitting
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                            height: 1.2,  // Proper line height to prevent clipping and improve readability
                          ),
                        ),
                        Text(
                          'Clark',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,  // Reduced font size for better fitting
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                            height: 1.2,  // Proper line height to prevent clipping and improve readability
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        const SizedBox(height: 60),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Color(0xFF343434),
                              fontSize: 20,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Color(0xFF343434)),
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
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'My Workouts',
                            style: TextStyle(
                              color: Color(0xFF343434),
                              fontSize: 20,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Color(0xFF343434)),
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
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Manage Friends',
                            style: TextStyle(
                              color: Color(0xFF343434),
                              fontSize: 20,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Color(0xFF343434)),
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
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              color: Color(0xFF343434),
                              fontSize: 20,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Color(0xFF343434)),
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
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: Color(0xFF343434),
                              fontSize: 20,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Color(0xFF343434)),
                  ],
                ),
              ),
              // Continue with the remaining containers
            ],
          ),
        )

      ],
      ),
      
    );
  }
}