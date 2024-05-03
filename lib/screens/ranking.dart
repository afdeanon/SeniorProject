// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class User extends StatefulWidget {
  final String name;
  final int score;

  const User({Key? key, required this.name, required this.score}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 393,
        height: 852,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 393,
                height: 266,
                decoration: BoxDecoration(color: Color(0xFF558CE0)),
              ),
            ),
            Positioned(
              left: 41,
              top: 127,
              child: Text(
                'Ranking',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 48,
              top: 290,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 44),
                          SizedBox(
                            width: 148,
                            child: Text(
                              'Ranking Name',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 18,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 64,
                      child: Text(
                        '100',
                        style: TextStyle(
                          color: Color(0xFF343434),
                          fontSize: 18,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 48,
              top: 227,
              child: Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 296,
              top: 227,
              child: Text(
                'Score',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 254,
              top: 151,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 88,
                      child: Text(
                        'Overall',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 768,
              child: Container(
                width: 393,
                height: 84,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            Positioned(
              left: 0,
              top: 831,
              child: Container(
                width: 393,
                height: 21,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
