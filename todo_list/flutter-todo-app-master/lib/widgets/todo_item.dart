import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  final onEditItem; // Thêm callback này để xử lý sự kiện sửa

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.onEditItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Row(
          children: [
            Icon(
              Icons.star, // Sử dụng biểu tượng sao
              color: Colors.yellow,
            ),
            SizedBox(width: 8), // Điều chỉnh khoảng cách giữa các biểu tượng
            Text(
              todo.todoText!,
              style: TextStyle(
                fontSize: 16,
                color: tdBlack,
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Colors.blue,
              iconSize: 25,
              icon: Icon(Icons.edit),
              onPressed: () {
                onEditItem(todo.id);
              },
            ),
            SizedBox(width: 8), // Điều chỉnh khoảng cách giữa các biểu tượng
            IconButton(
              color: Colors.red,
              iconSize: 25,
              icon: Icon(Icons.delete),
              onPressed: () {
                onDeleteItem(todo.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
