import 'package:flutter/material.dart';
import 'package:flutter_1/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeleteItem;

  const TodoItem({
    Key? key,
    required this.todo, // Need variable "todo" to make it work
    required this.onTodoChanged, // Need variable "todo" to make it work
    required this.onDeleteItem, // Need variable "todo" to make it work
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: ListTile(
        onTap: () {
          // print('Clicked');
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        tileColor: Colors.white,
        leading: Icon(
          // IF ELSE Todo IsDone
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            // IF ELSE Todo IsDone

            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(
              color: Colors.white,
              Icons.delete,
            ),
            color: Colors.white,
            iconSize: 16,
            onPressed: () {
              // print('Delete');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
