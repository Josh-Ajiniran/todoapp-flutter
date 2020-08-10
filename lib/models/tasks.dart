class Task {
  Task({this.text, this.isDone});
  String text;
  bool isDone;
}

List<Task> taskLists = [
  Task(text: 'Buy milk', isDone: false),
  Task(text: 'Buy eggs', isDone: false),
  Task(text: 'Buy bread', isDone: false),
  Task(text: 'Deliver glasses', isDone: true),
  Task(text: 'Contact old friend', isDone: false),
];
