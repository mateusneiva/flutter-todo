import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChange;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChange,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: blue,
        ),
        title: Text(todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            )),
        trailing: IconButton(
            color: Colors.red,
            iconSize: 22,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
            }),
      ),
    );
  }
}
