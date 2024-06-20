import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_project/models/tasks.dart';
import 'package:todoey_project/models/tasks_data.dart';

class AddTasksScreen extends StatelessWidget {
  // AddTasksScreen(this.addTaskCallback);
  // final Function(String?) addTaskCallback; 

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
        ElevatedButton(onPressed: (){
          //print("on pressed");
          //final task = Task(name: newTaskTitle);
          Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
          Navigator.pop(context);
        }, 
        child: Text("Add"))
        //ElevatedButton(onPressed: addTaskCallback(newTaskTitle), child: Text("Add"))
      ],),
    );
  }
}  