import 'package:flutter/material.dart';

class taskView extends StatefulWidget {
  const taskView({super.key});

  @override
  State<taskView> createState() => _taskViewState();
}

class _taskViewState extends State<taskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        style: ButtonStyle(),
        onPressed: () {
          // Navigator.pushNamed(context, "/task");
        },
        child: Text("go To taskChat"),
      )),
    );
  }
}
