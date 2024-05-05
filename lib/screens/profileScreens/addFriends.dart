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
        const SizedBox(height: 30),
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
          child: const Row(
            // Use Row to hold multiple widgets horizontally
            children: [
              Icon(Icons.search, color: Color(0xFF777777)),
              SizedBox(width: 10), // Space before the TextField
              Expanded(
                // Use Expanded to make the TextField take the remaining space
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true, // Makes the TextField compact
                    contentPadding: EdgeInsets.zero, // Adjust internal padding
                    border: InputBorder.none,
                    hintText: 'Enter the username',
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
      ],
    );
  }
}
