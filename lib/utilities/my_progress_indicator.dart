// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyProgressIndicator extends StatelessWidget {
  double value;
  double total;
  Color color;
  String title;

  MyProgressIndicator(
      {super.key,
      required this.value,
      this.total = 100,
      this.color = Colors.orange,
      this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            Center(
              child: Text(
                "${value.toInt().toString()} / ${total.toInt().toString()}",
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150.0,
              width: 150.0,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: (value / total),
                color: color,
                backgroundColor: Colors.blueGrey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(title, style: const TextStyle(fontSize: 20))
      ],
    );
  }
}
