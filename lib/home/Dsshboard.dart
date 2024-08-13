import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home/home_page.dart';

import '../reusable/button.dart';
import '../reusable/mycard.dart';
import '../service/authservice.dart';

class mydasboard extends StatefulWidget {
  const mydasboard({super.key});

  @override
  State<mydasboard> createState() => _mydasboardState();
}

class _mydasboardState extends State<mydasboard> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Task",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // plus button
                  CircleAvatar(
                    backgroundColor:
                        Colors.grey, // Set the background color to grey
                    radius:
                        15, // Adjust the radius to control the size of the circle
                    child: IconButton(
                      icon: Icon(
                        Icons.add, // The icon inside the circle
                        color: Colors.white, // Set the icon color (optional)
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              // color: Colors.blue,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  for (var item in taskDetail)
                    Mycard(
                        TaskTitle: item['Project']!,
                        TaskNumber: item['TaskNo']!,
                        createDate: item['TaskDate']!,
                        TaskPriority: item['TaskPriority']!,
                        AssignTo: item['AssignTo']!,
                        SpentHours: item['SpentHours']!,
                        TaskStatus: item['TaskStatus']!,
                        DueDate: item['DueDate']!,
                        color: item['TaskPriority']! == 'high'
                            ? Colors.deepPurple[300]
                            : item['TaskPriority']! == 'medium'
                                ? Colors.blue[300]
                                : Colors.green[300])
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: taskDetail.length,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myButton(IconName: Icons.add_circle, TextName: "Add Task"),
                  myButton(IconName: Icons.person, TextName: "HR"),
                  myButton(IconName: Icons.group, TextName: "View Team"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(25.0),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //                 color: Colors.grey[100],
            //                 borderRadius: BorderRadius.circular(12)),
            //             height: 80,
            //             padding: EdgeInsets.all(12),
            //             child: Icon(
            //               Icons.timeline,
            //               size: 30,
            //             ),
            //           ),
            //           Column(
            //             children: [
            //               Text("History"),
            //               Text("History of Your Task")
            //             ],
            //           ),
            //           Icon(Icons.arrow_forward_ios)
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
