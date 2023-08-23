class Todo {
  String? id;
  String? todoText;
  bool isDone;

// Needed for Todo Class
  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(
        id: '01',
        todoText: 'Buat',
        isDone: true,
      ),
      Todo(
        id: '02',
        todoText: 'Buat 2',
        isDone: true,
      ),
      Todo(
        id: '03',
        isDone: false,
        todoText: 'Buat 3',
      ),
      Todo(
        id: '04',
        isDone: false,
        todoText: 'Buat 4',
      ),
    ];
  }
}
