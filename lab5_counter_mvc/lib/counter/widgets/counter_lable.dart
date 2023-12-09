import 'package:flutter/material.dart';
import '../counter_controller.dart';
import '../counter_model.dart';

class CounterLabel extends StatelessWidget {
  const CounterLabel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: CounterController(),
      builder: (context, child) {
        return Text(
          CounterModel().counter.toString(),
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
