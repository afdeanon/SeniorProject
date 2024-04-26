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
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
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
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                width: 330,
                height: 418,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 32),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
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
                          const SizedBox(width: 32),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}