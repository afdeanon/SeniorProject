import 'package:flutter/material.dart';
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
      body: ListView(
        children: [
          const EditProfile(),
        ],
      ),
      
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 120),
          const SizedBox(
            width: 330,  // 텍스트 박스의 너비 지정
            child: Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 36,  // 글자 크기
                fontWeight: FontWeight.bold,  // 글자 두께
              ),
              textAlign: TextAlign.left,  // 텍스트를 좌측으로 정렬
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