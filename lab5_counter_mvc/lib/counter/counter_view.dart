import 'package:flutter/material.dart';
import 'package:lab5_counter_mvc/counter/widgets/counter_button.dart';
import 'widgets/counter_lable.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MINH QUANG - 2121050844')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CounterLabel(),
            const CounterButton(),
            Text(
              '- để giảm, + để tăng',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
