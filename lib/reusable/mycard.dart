import 'package:flutter/material.dart';





class Mycard extends StatelessWidget {
  final String TaskTitle;
  final String TaskNumber;
  final String createDate;
  final String TaskPriority;
  final String AssignTo;
  final String SpentHours;
  final String TaskStatus;
  final String DueDate;
  final color;

  const Mycard({
    Key? key,
    required this.TaskTitle,
    required this.TaskNumber,
    required this.createDate,
    required this.TaskPriority,
    required this.AssignTo,
    required this.SpentHours,
    required this.TaskStatus,
    required this.DueDate,
    required this.color,
  }): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$TaskTitle",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),),
            SizedBox(height: 5,),
            Text("$createDate",
                style: TextStyle(
                  color: Colors.white,
                )
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("$TaskNumber",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),

                      Text("$TaskPriority",
                          style: TextStyle(
                            color: Colors.white,
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("$AssignTo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            )),
                      ),

                      Text("$SpentHours",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("$TaskStatus",
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 15
                            )),
                      ),

                      Text("Due Date:$DueDate",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          )
                      )
                    ],
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
