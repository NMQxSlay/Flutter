import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minh Quang - 2121050844'),
        ),
        body: Column(
          children: [
            MyInfoWidget(), // Display your name and avatar
            // Other widgets or app content
          ],
        ),
      ),
    );
  }
}

class MyInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Minh Quang',
            style: TextStyle(fontSize: 24),
          ),
          Image.asset('assets/images/avtfb.jpg'),
        ],
      ),
    );
  }
}
