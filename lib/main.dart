import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_project/models/tasks_data.dart';
import 'screens/homePage.dart';

void main(){
  runApp(TodoeyApp());
}

class TodoeyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { 
        return TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}