import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/profileScreens/FriendsAdd.dart';
import 'package:social_workout_app/screens/workoutScreens/adding/addWorkout.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/horizontalDayListState.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/routineGridView.dart';

class FriendsManageScreen extends StatefulWidget {
  const FriendsManageScreen({Key? key, User? user}) : super(key: key);

  @override
  _FriendsManageScreenState createState() => _FriendsManageScreenState();
}

final auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final usersDatabase = db.collection("users");
final workoutDatabase = db.collection("Workouts");
bool show = true;
// List routines = user.get("Routines");
Future<DocumentSnapshot> doc_id =
    _getUser(auth.currentUser!.uid); //doc id of current user
Future<List<String>?> getFriendsList(String userId) async {
  DocumentSnapshot userDoc =
      await FirebaseFirestore.instance.collection('users').doc(userId).get();
  List<String> friends = List<String>.from(userDoc['friends']);
  return friends;
}

Future<List<Map<String, dynamic>>> getUsersByIds(List<String> userIds) async {
  List<Map<String, dynamic>> users = [];
  for (String userId in userIds) {
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    if (userDoc.exists) {
      users.add(userDoc.data() as Map<String, dynamic>);
    }
  }
  return users;
}

Future<DocumentSnapshot> _getUser(String id) {
  return usersDatabase.doc(auth.currentUser!.uid).get();
}
// FirebaseFirestore.instance.collection('Workouts').where("__name__", whereIn: routines).snapshots();

class _FriendsManageScreenState extends State<FriendsManageScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FriendsAddScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
        title: const Text("Manage Friends"),
      ),
      body: FutureBuilder<List<String>?>(
        future: getFriendsList(auth.currentUser!.uid),
        builder: (ctx, streamSnapshot) {
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (streamSnapshot.hasError) {
            return Center(child: Text('Error: ${streamSnapshot.error}'));
          } else if (!streamSnapshot.hasData || streamSnapshot.data!.isEmpty) {
            return Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 20, 10, 20),
                    width: 330,
                    height: 116,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        SizedBox(width: 50),
                        Text(
                          'Add a friend!',
                          style: TextStyle(
                            color: Color(0xFF777777),
                            fontSize: 24,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.normal,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            if (streamSnapshot.hasData) {
              return FutureBuilder<List<Map<String, dynamic>>>(
                  future: getUsersByIds(streamSnapshot.data!),
                  builder: (context, userSnapshot) {
                    if (userSnapshot.hasData) {
                      return ListView.builder(
                        itemCount: streamSnapshot.data!.length,
                        itemBuilder: (context, index) {
                          var user = userSnapshot.data![index];
                          if (userSnapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (userSnapshot.hasError) {
                            return Center(
                                child: Text('Error: ${userSnapshot.error}'));
                          } else if (!userSnapshot.hasData ||
                              userSnapshot.data!.isEmpty) {
                            return Center(child: Text('No users found'));
                          } else {
                            return Card(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.network(
                                      user['profileImage'],
                                    ),
                                    title: Text(
                                      user['name'],
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: Text(""),
                                    onTap: () async {
                                      // DocumentSnapshot user = await usersDatabase
                                      //     .doc(auth.currentUser!.uid)
                                      //     .get();
                                      // print(user.get("Routines"));
                                      // String exercise = users[index].id;
                                      // print(users[index].id);
                                      // List routines = user.get("Routines");
                                    },
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      );
                    }
                    return Column();
                  });
            }
          }
          return Column();
        },
      ),
    );
  }
}
