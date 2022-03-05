import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String randomNumber = "X";
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("best of Worst"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Center(
            child: Column(
          children: [
            randomNumber == '0'
                ? const Text('Out',
                    style: TextStyle(color: Colors.red, fontSize: 50.0))
                : Text(randomNumber,
                    style:
                        const TextStyle(color: Colors.green, fontSize: 50.0)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    a = Random().nextInt(5);
                    randomNumber = (a * 2).toString();
                  });
                },
                child: const Text("RUN"))
          ],
        )),
      ),
    );
  }
}
