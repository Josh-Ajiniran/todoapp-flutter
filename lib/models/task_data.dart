import 'package:Todoey/models/tasks.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskLists = [
    Task(text: 'Buy milk', isDone: false),
    Task(text: 'Buy eggs', isDone: false),
    Task(text: 'Buy bread', isDone: false),
    Task(text: 'Deliver glasses', isDone: true),
    Task(text: 'Contact old friend', isDone: false),
  ];

  int get taskCount {
    return taskLists.length;
  }

  void addTaskData(String newTask) {
    taskLists.add(Task(text: newTask));
    notifyListeners();
  }
}
