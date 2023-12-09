import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Số lần: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Tăng số'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0; // Thêm dấu chấm phẩy ở đây

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Sửa lỗi chính tả
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        SizedBox(width: 16), // Sửa lỗi chính tả
        CounterDisplay(count: _counter),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
