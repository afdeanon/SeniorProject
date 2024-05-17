import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddWorkoutScreen extends StatefulWidget {
  const AddWorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _AddWorkoutScreenState createState() => _AddWorkoutScreenState();
}

String searchName = "";
final auth = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final usersDatabase = db.collection("users");
Future<DocumentSnapshot> _getUser(String id) {
  return usersDatabase.doc(auth.currentUser!.uid).get();
}

Future<DocumentSnapshot> doc_id = _getUser(auth.currentUser!.uid);

class _AddWorkoutScreenState extends State<AddWorkoutScreen> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var repsController = TextEditingController();
    var setsController = TextEditingController();
    var weightController = TextEditingController();
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
        stream: FirebaseFirestore.instance.collection('Workouts').snapshots(),
        builder: (ctx, streamSnapshot) {
          if (streamSnapshot.hasData) {
            final exercises = streamSnapshot.data!.docs;
            return ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                if (searchName == "") {
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
                            print(user.get("routines"));
                            String exercise = exercises[index].id;
                            print(exercises[index].id);
                            List routines = user.get("routines");

                            // ignore: use_build_context_synchronously
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(exercises[index]["Name"]),
                                  content: Form(
                                    key: _form,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: setsController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.trim().isEmpty) {
                                              return 'Please enter number of sets';
                                            }
                                          },
                                          decoration:
                                              InputDecoration(hintText: "Sets"),
                                        ),
                                        TextFormField(
                                          controller: repsController,
                                          decoration: const InputDecoration(
                                              hintText: "Reps"),
                                          onSaved: (value) {},
                                        ),
                                        TextFormField(
                                          controller: weightController,
                                          decoration:
                                              InputDecoration(hintText: "lbs"),
                                          onSaved: (value) {},
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            String _enteredReps =
                                                repsController.text;
                                            String _enteredSets =
                                                repsController.text;
                                            String _enteredWeight =
                                                repsController.text;
                                            print(doc_id);
                                            usersDatabase
                                                .doc(auth.currentUser!.uid)
                                                .collection('Routines')
                                                .doc(exercise.toString())
                                                .set({
                                              "workoutID": exercise,
                                              "reps": _enteredReps,
                                              "sets": _enteredSets,
                                              "weight": _enteredWeight,
                                            });

                                            Navigator.of(context).pop();
                                            // addRoutineDetails(
                                            //     _enteredReps,
                                            //     _enteredSets,
                                            //     _enteredWeight,
                                            //     context,
                                            //     'a');
                                          },
                                          child: Text("Submit"),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  );
                }
                if (exercises[index]['Name']
                    .toString()
                    .toLowerCase()
                    .startsWith(searchName.toLowerCase())) {
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
                            print(user.get("routines"));
                            String exercise = exercises[index].id;
                            print(exercises[index].id);
                            List routines = user.get("routines");

                            // ignore: use_build_context_synchronously
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(exercises[index]["Name"]),
                                  content: Form(
                                    key: _form,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: setsController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.trim().isEmpty) {
                                              return 'Please enter number of sets';
                                            }
                                          },
                                          decoration:
                                              InputDecoration(hintText: "Sets"),
                                        ),
                                        TextFormField(
                                          controller: repsController,
                                          decoration: const InputDecoration(
                                              hintText: "Reps"),
                                          onSaved: (value) {},
                                        ),
                                        TextFormField(
                                          controller: weightController,
                                          decoration:
                                              InputDecoration(hintText: "lbs"),
                                          onSaved: (value) {},
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            String _enteredReps =
                                                repsController.text;
                                            String _enteredSets =
                                                repsController.text;
                                            String _enteredWeight =
                                                repsController.text;
                                            print(doc_id);
                                            usersDatabase
                                                .doc(auth.currentUser!.uid)
                                                .collection('Routines')
                                                .doc(exercise.toString())
                                                .set({
                                              "workoutID": exercise,
                                              "reps": _enteredReps,
                                              "sets": _enteredSets,
                                              "weight": _enteredWeight,
                                            });

                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Submit"),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
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

  Future<DocumentSnapshot> _getUser(String id) {
    return usersDatabase.doc(auth.currentUser!.uid).get();
  }

  Future<void> addRoutineDetails(
      String reps, String sets, String lbs, dynamic context, String doc_id) {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final userDb = db.collection("users");
    List<String> repsList = [];
    List<String> setsList = [];
    List<String> lbsList = [];
    repsList.add(reps);
    setsList.add(sets);
    lbsList.add(lbs);
    return userDb
        .doc(doc_id)
        .update({'Reps': FieldValue.arrayUnion(repsList)})
        .then((value) => Navigator.pop(context,
            MaterialPageRoute(builder: (context) => AddWorkoutScreen())))
        .catchError((error) => print("Failed to add reps: $error"));
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField in Dialog'),
          content: TextField(
            decoration: InputDecoration(hintText: "Text Field in Dialog"),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
