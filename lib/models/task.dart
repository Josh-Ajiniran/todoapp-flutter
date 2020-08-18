class Task {
  Task({this.text, this.isDone = false});
  String text;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
