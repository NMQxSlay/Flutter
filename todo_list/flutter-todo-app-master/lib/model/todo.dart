class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Mua đồ ăn', isDone: true),
      ToDo(
        id: '02',
        todoText: 'Học Flutter',
      ),
      ToDo(
        id: '03',
        todoText: 'Kiểm tra Emails',
      ),
    ];
  }
}
