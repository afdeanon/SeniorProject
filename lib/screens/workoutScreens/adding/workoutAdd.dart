// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class WorkoutAdd extends StatefulWidget {
  const WorkoutAdd({Key? key, User? user}) : super(key: key);

  @override
  _WorkoutAddState createState() => _WorkoutAddState();
}

class _WorkoutAddState extends State<WorkoutAdd> {

  late TextEditingController _workoutNameChanger;
  void initState(){
    super.initState();
    _workoutNameChanger = TextEditingController(text:'Workout 1');
  }
  void dispose(){
    _workoutNameChanger.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 393,
            height:852,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left:32,
                  top:209,
                  child: Container(
                    width:338,
                    height:116,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side:BorderSide(width:2, color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(15),
                        ), 
                    ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width:50),
                      Text(
                        'Add a Workout',
                        style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize:24,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                        height:0,
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
                Positioned( 
                  left:0,
                  top:0,
                  child: Container(
                    width: 393,
                    height:171,
                    decoration: BoxDecoration(color:Theme.of(context).colorScheme.primary),
                  child: const Text("Workout"),
                  ),
                ),
                 Positioned(
                  left: 31,
                  top:126,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: const [
                      Text(
                        "My Workout 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height:0,
                        ),
                      ),
                      const SizedBox(width:13),
                    ],
                  ),
                ),
                Positioned(
                  left:0,
                  top:768,
                  child: Container(
                    width:393,
                    height:84,
                    decoration:BoxDecoration(color: Colors.white),
                  ),
                ),
              ],
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: (){ IM GONNA TRY AND FIGURE THIS OUT IN A BIT
        //   showDialog(
        //     context: context,
        //     builder: (context){
        //       return 
        //     }
        //   )
        // }
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Button Pressed"),
              duration: Duration(minutes: 1),
              )
          );
        },
        splashColor: Colors.blue,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add,size:50),
      ),
    );
  }
}
