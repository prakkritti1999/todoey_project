import 'package:flutter/material.dart';
import 'package:todoey_project/models/tasks.dart';
import 'package:todoey_project/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Groceries')
  ];

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: [
    //     TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
    //     TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
    //     TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,)
    //   ],
    // );
    return Container(
      child: ListView.builder(itemBuilder: (context,index){
        return TaskTile(
          isChecked: tasks[index].isDone, 
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState){
            setState(() {
              tasks[index].toggleDone();
            });
          }
        );
      },
      itemCount: tasks.length,
      ),
    );
  }
}