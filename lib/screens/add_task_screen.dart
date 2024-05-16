import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  AddTasksScreen(this.addTaskCallback);
  final Function(String?) addTaskCallback; 

  String newTaskTitle = "Go to Gym";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Text('Add Task',
        style: TextStyle(
          fontSize: 30,
          color: Colors.lightBlueAccent
        ),),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText){
            newTaskTitle = newText;
          },
        ),
        ElevatedButton(onPressed: addTaskCallback(newTaskTitle), child: Text("Add"))
      ],),
    );
  }
}  