import 'package:flutter/material.dart';

class AddTasksScreen extends StatefulWidget {
  const AddTasksScreen({super.key});

  @override
  State<AddTasksScreen> createState() => _AddtasksState();
}

class _AddtasksState extends State<AddTasksScreen> {
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
        ),
        ElevatedButton(onPressed: (){

        }, child: Text("Add"))
      ],),
    );
  }
}  