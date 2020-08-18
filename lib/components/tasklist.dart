import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Todoey/models/task_data.dart';
import 'package:Todoey/components/tasktile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
            itemCount: taskData.taskCount,
            itemBuilder: (_, index) {
              return TaskTile(
                text: taskData.tasks[index].text,
                isChecked: taskData.tasks[index].isDone,
                toggleCheckState: (checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                deleteTaskFunc: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            },
          ),
        );
      },
    );
  }
}
