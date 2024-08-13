import 'package:flutter/material.dart';


class myButton extends StatelessWidget {

  final IconData  IconName;
  final String TextName;

  const myButton({
    Key ? key,
required this.IconName,
required this.TextName,
}): super(key : key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 25,
                  spreadRadius: 2
              )]),
          child: Center(
              child: Icon(
                IconName,
                size: 50,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          TextName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
