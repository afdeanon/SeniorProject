import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'editProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, User? user}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Profile(),
        ],
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 80),

          SizedBox(
            width: 270,
            height: 110,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 110,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profileImages/default.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 24),
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfileScreen()),
                    );
                  },
                  child: Container(
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
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right, color: Color(0xFF343434)),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 12),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfile()),  // This assumes EditProfile is the name of the widget you want to navigate to.
                    );
                  },
                  child: Container(
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
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right, color: Color(0xFF343434)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                
                Container(
                  width: 330,
                  height: 1,
                  decoration: const BoxDecoration(color: Color(0xFFD4D4D4)),
                ),

                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfile()),  // This assumes EditProfile is the name of the widget you want to navigate to.
                    );
                  },
                  child: Container(
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
                                'Log Out',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 20,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right, color: Color(0xFF343434)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

              ],
            ),
          )
        ],
      ),
    );
  }
}