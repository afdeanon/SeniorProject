import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino widgets
import 'package:firebase_auth/firebase_auth.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key, User? user}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        EditProfile(),
      ]),
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 330,
          height: 554,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 77),
              Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(height: 77),
              Container(
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
                              'Change Name',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 20,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
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
                              'Change Password',
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
                              'Change Height',
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
                              'Change Weight',
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
        )
      ],
    );        
  }
}
