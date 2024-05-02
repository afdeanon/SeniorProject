import 'package:flutter/material.dart';
import 'workoutTile.dart';

class RoutineGridView extends StatefulWidget {
  List<List<String>> todoList;
  RoutineGridView({Key? key, required this.todoList}) : super(key: key);

  @override
  _RoutineGridViewState createState() => _RoutineGridViewState();
}

class _RoutineGridViewState extends State<RoutineGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: widget.todoList.length,
      itemBuilder: (BuildContext context, int index) {
        return WorkoutTile(
            title: widget.todoList[index][0],
            description: widget.todoList[index][1]);
      },
    );
  }
}
