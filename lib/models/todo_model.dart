class Todo {
  final int id;
  final int userid;
  final String title;
  bool completed;

  Todo(
      {required this.id,
      required this.userid,
      required this.title,
      required this.completed});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userid': userid,
      'title': title,
      'completed': completed ? 1 : 0,
    };
  }

  @override
  String toString() {
    return 'Todo(id : $id, userid : $userid, title : $title, completed : $completed)';
  }
}
