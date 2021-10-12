import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter',
              style: TextStyle(fontSize: 30.0,),
            ),
            const SizedBox(height:10.0,),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 30.0),
            ),
            const SizedBox(height:10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                ),
                const SizedBox(width: 20.0,),
                ElevatedButton(
                  child: const Text(
                    "Minus",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    setState(() {
                      _counter--;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
