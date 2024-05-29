import 'package:flutter/material.dart';
import 'package:todoey_project/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> ListOfTasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Groceries')
  ];
  int get taskCount{
    return ListOfTasks.length;
  }
}