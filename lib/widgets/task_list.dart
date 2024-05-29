import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_project/models/tasks.dart';
import 'package:todoey_project/models/tasks_data.dart';
import 'package:todoey_project/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

//   // final List<Task> tasks;

//   // const TasksList({super.key, required this.tasks});

//   @override
//   State<TasksList> createState() => _TasksListState();
// }

// class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: [
    //     TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
    //     TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
    //     TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,)
    //   ],
    // );
    return Consumer<TaskData>( 
      builder: (BuildContext context, taskData, Widget? child) { 
        return ListView.builder(itemBuilder: (context,index){
        return TaskTile(
          // isChecked: widget.tasks[index].isDone, 
          // taskTitle: widget.tasks[index].name,
          // checkboxCallback: (checkboxState){
          //   setState(() {
          //     widget.tasks[index].toggleDone();
          //   });
          // }
          taskTitle: taskData.ListOfTasks[index].name,
          isChecked: taskData.ListOfTasks[index].isDone,
          checkboxCallback: (checkboxState){
            // setState(() {
            //   Provider.of<TaskData>(context).ListOfTasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: taskData.taskCount,
      );
    },
      // child: ListView.builder(itemBuilder: (context,index){
      //   return TaskTile(
      //     // isChecked: widget.tasks[index].isDone, 
      //     // taskTitle: widget.tasks[index].name,
      //     // checkboxCallback: (checkboxState){
      //     //   setState(() {
      //     //     widget.tasks[index].toggleDone();
      //     //   });
      //     // }
      //     taskTitle: Provider.of<TaskData>(context).ListOfTasks[index].name,
      //     isChecked: Provider.of<TaskData>(context).ListOfTasks[index].isDone,
      //     checkboxCallback: (checkboxState){
      //       // setState(() {
      //       //   Provider.of<TaskData>(context).ListOfTasks[index].toggleDone();
      //       // });
      //     },
      //   );
      // },
      // itemCount: Provider.of<TaskData>(context).ListOfTasks.length,
      // ),
    );
  }
}