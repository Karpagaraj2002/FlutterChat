import 'package:flutter/material.dart';

class taskchat extends StatefulWidget {
  const taskchat({super.key});

  @override
  State<taskchat> createState() => _taskchatState();
}

class _taskchatState extends State<taskchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "TaskChat",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
