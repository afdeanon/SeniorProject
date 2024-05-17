import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_workout_app/screens/profileScreens/profileScreen.dart';

class FriendsAddScreen extends StatefulWidget {
  const FriendsAddScreen({Key? key, User? user}) : super(key: key);

  @override
  _FriendsAddScreenState createState() => _FriendsAddScreenState();
}

String searchName = "";
final auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final usersDatabase = db.collection("users");
Future<DocumentSnapshot> _getUser(String id) {
  return usersDatabase.doc(auth.currentUser!.uid).get();
}

Future<DocumentSnapshot> doc_id = _getUser(auth.currentUser!.uid);

class _FriendsAddScreenState extends State<FriendsAddScreen> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Card(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), hintText: 'Search...'),
          onChanged: (val) {
            setState(() {
              searchName = val;
            });
          },
        ),
      )),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (ctx, streamSnapshot) {
          if (streamSnapshot.hasData) {
            final users = streamSnapshot.data!.docs;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                // final DocumentSnapshot documentSnapshot =
                //     streamSnapshot.data!.docs[index];
                if (searchName == "" &&
                    users[index].data()["name"] !=
                        auth.currentUser!.displayName) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                            users[index].data()["profileImage"],
                          ),
                          title: Text(
                            users[index].data()["name"],
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(''),
                          trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () async {
                              DocumentSnapshot user = await usersDatabase
                                  .doc(auth.currentUser!.uid)
                                  .get();
                              var userID = users[index].id;
                              List friends = user.get("friends");
                              if (!friends.contains(userID)) {
                                friends.add(userID);
                                await FirebaseFirestore.instance
                                    .collection('users')
                                    .doc(auth.currentUser!.uid)
                                    .update({'friends': friends});
                                Navigator.of(context).pop();
                              } else {
                                return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          content: Text(
                                              'User has already been added'),
                                          actions: <Widget>[
                                            ElevatedButton(
                                              child: Text('OKAY'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ]);
                                    });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }
                if (users[index]['name']
                        .toString()
                        .toLowerCase()
                        .startsWith(searchName.toLowerCase()) &&
                    users[index].data()["name"] !=
                        auth.currentUser!.displayName) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                            users[index].data()["profileImage"],
                          ),
                          title: Text(
                            users[index].data()["name"],
                            style: TextStyle(color: Colors.black),
                          ),
                          onTap: () async {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                }
                return Column();
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
