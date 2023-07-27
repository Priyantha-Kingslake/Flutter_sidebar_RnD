import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Colors.red,
          child: const Text("test1"),
        ),
        Container(
          height: 100,
          color: Colors.blue,
          child: const Text("test1"),
        ),
        Container(
          height: 250,
          color: Colors.yellow,
          child: const Text("test1"),
        )
      ],
    );
  }
}