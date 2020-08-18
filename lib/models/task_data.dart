import 'package:Todoey/models/task.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskLists = [
    Task(text: 'Buy milk', isDone: false),
    Task(text: 'Buy eggs', isDone: false),
    Task(text: 'Buy bread', isDone: false),
    Task(text: 'Deliver glasses', isDone: true),
    Task(text: 'Contact old friend', isDone: false),
  ];

  int get taskCount {
    return _taskLists.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskLists);
  }

  void addTaskData(String newTask) {
    _taskLists.add(Task(text: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskLists.remove(task);
    notifyListeners();
  }
}
