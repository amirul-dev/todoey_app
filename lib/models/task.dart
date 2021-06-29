class Task {
  final String name;
  bool isDone;

  Task({this.isDone = false, this.name});

  void toggleDone() {
    isDone = !isDone;
  }
}
