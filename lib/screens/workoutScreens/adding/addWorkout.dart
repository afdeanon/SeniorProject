import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddWorkoutScreen extends StatefulWidget {
  const AddWorkoutScreen({Key? key, User? user}) : super(key: key);

  @override
  _AddWorkoutScreenState createState() => _AddWorkoutScreenState();
}

String searchName = "";

class _AddWorkoutScreenState extends State<AddWorkoutScreen> {
  final Stream<QuerySnapshot<Map<String, dynamic>>> _abs = FirebaseFirestore
      .instance
      .collection('Abs')
      .orderBy("WorkoutType")
      .snapshots();
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
        stream: _abs,
        builder: (BuildContext context, AsyncSnapshot<dynamic> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
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
                          // leading: Image.network(
                          //   documentSnapshot["Images"][0],
                          // ),
                          title: Text(documentSnapshot["Name"]),
                          subtitle: Text(documentSnapshot["Fitness Level"]),
                          onTap: () {
                            // name = documentSnapshot["Name"];
                            // address = documentSnapshot["Address"];
                            // imageURL = documentSnapshot["Images"][0];
                            // rating = documentSnapshot["Ratings"];
                            // hours = documentSnapshot["Hours"];
                            // parking = documentSnapshot["Parking"];
                            // review = documentSnapshot["Reviews"][0];
                            // reviews = documentSnapshot["Reviews"];
                            // doc_id = documentSnapshot.id;
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           RestaurantDetailScreen()),
                            // );
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
    // @override
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //     body: Center(
    //         child: Column(
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.fromLTRB(20, 6, 10, 10),
    //           decoration: const BoxDecoration(color: Color(0xFF558CE0)),
    //           alignment: Alignment.topLeft,
    //           child: Column(
    //             children: [
    //               SizedBox(height: 40),
    //               Container(
    //                 alignment: Alignment.topLeft,
    //                 child: IconButton(
    //                   icon: Icon(Icons.arrow_back),
    //                   onPressed: () {
    //                     Navigator.pop(context);
    //                   },
    //                 ),
    //               ),
    //               SizedBox(height: 10),
    //               Container(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text(
    //                   'Add Workout',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 30,
    //                     fontFamily: 'SF Pro',
    //                     fontWeight: FontWeight.w600,
    //                     height: 0,
    //                   ),
    //                 ),
    //               )
    //             ],
    //             //ADD WORKOUT LIST HERE

    //           ),
    //         ),
    //       ],
    //     )),
    //   );
  }
}
