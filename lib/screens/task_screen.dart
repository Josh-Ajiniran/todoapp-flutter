import 'dart:ui';

import 'package:Todoey/components/tasklist.dart';
import 'package:Todoey/models/task_data.dart';
import 'package:Todoey/screens/add_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.0, top: 120.0),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.list,
                color: Colors.lightBlueAccent,
                size: 50.0,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Todoey',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              '${Provider.of<TaskData>(context).taskCount} Tasks',
              style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: TaskList(),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => AddTaskScreen(),
              );
            },
            child: Icon(Icons.add, size: 50.0),
          ),
        ),
      ),
    );
  }
}
