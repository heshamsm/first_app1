import 'dart:math';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<String> example = [
    'ما عمرك؟',
    'ما اسمك؟',
    'لونك المفضل؟',
    'ما هو تخصصك؟',
  ];
  int item = 0;

  void ex1() {
    setState(() {
      item = Random().nextInt(example.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            ex1();
          },
          child:  Text(example[item],
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
