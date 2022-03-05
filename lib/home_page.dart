import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  int days = 20;
  String name = "Anchal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to the $days days of Flutter by $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
