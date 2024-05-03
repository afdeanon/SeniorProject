import 'package:flutter/material.dart';

class routineList extends StatefulWidget{
  final String exerciseName;
  final String exerciseDescription;
  final String exerciseFitnessLevel;
  final String exerciseMuscleGroup;
  final String exerciseTargetMuscle;
  final String exerciseWorkoutType;
  const routineList({Key? key, required this.exerciseName, required this.exerciseDescription, required this.exerciseFitnessLevel, required this.exerciseMuscleGroup, required this.exerciseTargetMuscle, required this.exerciseWorkoutType}): super(key: key);

  @override

  _routineListState createState() => _routineListState();
}
class _routineListState extends State<routineList>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20) ,
      height: 200,
      width: 250,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding:const EdgeInsets.only(left: 10.0, right: 10.0, top:20),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(widget.exerciseName, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
            Text(widget.exerciseDescription, style: const TextStyle(color: Colors.white, fontSize: 12,), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
            Text(widget.exerciseFitnessLevel, style: const TextStyle(color: Colors.white, fontSize: 12,), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
            Text(widget.exerciseMuscleGroup, style: const TextStyle(color: Colors.white, fontSize: 12,), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
            Text(widget.exerciseTargetMuscle, style: const TextStyle(color: Colors.white, fontSize: 12,), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
            Text(widget.exerciseWorkoutType, style: const TextStyle(color: Colors.white, fontSize: 12,), textAlign: TextAlign.center,),
            const SizedBox(height:20,),
          ],
        ),
      ),
    );
  }
}