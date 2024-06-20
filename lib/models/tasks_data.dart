import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_project/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _ListOfTasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Groceries')
  ];
  int get taskCount{
    return _ListOfTasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_ListOfTasks);
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _ListOfTasks.add(task);
    notifyListeners();

  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _ListOfTasks.remove(task);
    notifyListeners();
  }
}