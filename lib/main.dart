import 'package:flutter/material.dart';
import 'screens/homePage.dart';

void main(){
  runApp(TodoeyApp());
}

class TodoeyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}