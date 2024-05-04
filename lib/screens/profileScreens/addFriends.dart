import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddFriendsScreen extends StatefulWidget {
  const AddFriendsScreen({Key? key, User? user}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddFriendsScreenState createState() => _AddFriendsScreenState();
}

class _AddFriendsScreenState extends State<AddFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          AddFriends(),
        ],
      ),
    );
  }
}

class AddFriends extends StatefulWidget {
  const AddFriends({Key? key}) : super(key: key);

  @override
  _AddFriendsState createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        const SizedBox(height: 50),
        const SizedBox(
          width: 330,
          child: Text(
            "Add Friends",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 60),


        Container(
          width: 332,
          height: 34,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: ShapeDecoration(
            color: const Color(0xFFF2F2F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Row( // Use Row to hold multiple widgets horizontally
            children: [
              Icon(Icons.search, color: Color(0xFF777777)),
              SizedBox(width: 10), // Space before the TextField
              Expanded( // Use Expanded to make the TextField take the remaining space
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true, // Makes the TextField compact
                    contentPadding: EdgeInsets.zero, // Adjust internal padding
                    border: InputBorder.none,
                    hintText: 'Enter the user ID',
                    hintStyle: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 12,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'SF Pro',
                  ),
                  cursorColor: Colors.black,
                ),
              ),
            ],
          ),
        ),


        const SizedBox(height: 40),

        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                  // );
                },
                child: Container(
                  width: 330,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                              'Change Name',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                  // );
                },
                child: Container(
                  width: 330,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                              'Change Password',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                  // );
                },
                child: Container(
                  width: 330,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                              'Change Height',
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                  // );
                },
                child: Container(
                  width: 330,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                              'Change Weight',
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
            ],
          ),
        )
      ],
    );
  }
}
