// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_project/models/tasks.dart';
import 'package:todoey_project/models/tasks_data.dart';
import 'package:todoey_project/screens/add_task_screen.dart';
import 'package:todoey_project/widgets/task_list.dart';
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  // List<Task> ListOfTasks = [
  //   Task(name: 'Buy milk'),
  //   Task(name: 'Buy Eggs'),
  //   Task(name: 'Buy Groceries')
  // ];

  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddTasksScreen());
        },
        shape: CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,bottom: 30,left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                      Icons.list,
                      size: 30,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),),
                Text('${Provider.of<TaskData>(context).tasks.length} Tasks', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: TasksList()
            ),
          )
        ],
      ),
    );
  }
}




