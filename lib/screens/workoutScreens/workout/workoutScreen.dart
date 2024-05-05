import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_workout_app/screens/workoutScreens/adding/addWorkout.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/horizontalDayListState.dart';
import 'package:social_workout_app/screens/workoutScreens/workout/routineGridView.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

final auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final usersDatabase = db.collection("users");
final workoutDatabase = db.collection("Workouts");
bool show = true;
// List routines = user.get("Routines");
Future<DocumentSnapshot> doc_id =
    _getUser(auth.currentUser!.uid); //doc id of current user

Future<DocumentSnapshot> _getUser(String id) {
  return usersDatabase.doc(auth.currentUser!.uid).get();
}
// FirebaseFirestore.instance.collection('Workouts').where("__name__", whereIn: routines).snapshots();

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("My Routines"),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('add').snapshots(),
          builder: (ctx, streamSnapshot) {
            if (streamSnapshot.hasData && show != false) {
              final exercises = streamSnapshot.data!.docs;
              return ListView.builder(
                itemCount: exercises.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                            exercises[index].data()["Image"],
                          ),
                          title: Text(
                            exercises[index].data()["Name"],
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(exercises[index]["Intensity"]),
                          onTap: () async {
                            DocumentSnapshot user = await usersDatabase
                                .doc(auth.currentUser!.uid)
                                .get();
                            print(user.get("Routines"));
                            String exercise = exercises[index].id;
                            print(exercises[index].id);
                            List routines = user.get("Routines");
                            // ignore: use_build_context_synchronously
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(exercises[index]["Name"]),
                                    content: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 10, 10),
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        children: [
                                          Image.network(
                                            exercises[index].data()["Image"],
                                          ),
                                          const Text("Instructions"),
                                          Text(exercises[index]
                                              .data()["Instructions"]),
                                          Text("Muscle Group: " +
                                              exercises[index]
                                                  .data()["Muscle Group"]),
                                          Text("Lbs: " +
                                              exercises[index].data()["Lbs"]),
                                          Text("Reps: " +
                                              exercises[index].data()["Reps"]),
                                          Text("Sets: " +
                                              exercises[index].data()["Sets"])
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            }
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
                        const SizedBox(width: 50),
                        Text(
                          'Start a Workout!',
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
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddWorkoutScreen()),
            );
          },
          label: const Text('Create a new Routine'),
          icon: const Icon(Icons.add),
        ));
  }

  Future<DocumentSnapshot> _getUser(String id) {
    return usersDatabase.doc(auth.currentUser!.uid).get();
  }

  /**
   * Container(
width: 393,
height: 237,
decoration: BoxDecoration(color: Color(0xFF558CE0)),
)
   */
}

class FavoritesList extends StatelessWidget {
  var _favs;
  late Stream<QuerySnapshot<Map<String, dynamic>>> _favorites;

  FavoritesList(favs) {
    _favs = favs;
    _favorites = FirebaseFirestore.instance
        .collection('RestaurantName')
        .where("__name__", whereIn: _favs)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        title: Text(
          "Routines",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: StreamBuilder(
        stream: _favorites,
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Image.network(
                          documentSnapshot["Images"][0],
                        ),
                        title: Text(documentSnapshot["Name"]),
                        subtitle: Text(documentSnapshot["Address"]),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return Container(
            width: 330,
            height: 116,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 330,
                  height: 116,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0xFFD4D4D4)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 50),
                      Text(
                        'Start a Workout!',
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
        },
      ),
    );
  }
}
