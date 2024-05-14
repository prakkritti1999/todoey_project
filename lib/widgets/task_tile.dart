import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlue,
      value: isChecked, 
      onChanged: checkboxCallback(),
    ),
    );
  }
}

class TaskCheckbox extends StatelessWidget{
  final Function? toggleCheckboxState;
  final bool checkboxState;
  TaskCheckbox({required this.checkboxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkboxState, 
      onChanged: toggleCheckboxState!(),
    );
  }

}