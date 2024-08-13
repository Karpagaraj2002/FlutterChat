import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_task/home/Dsshboard.dart';
import 'package:my_task/home/Taskview.dart';
import 'package:my_task/home/profile.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final _controller = PageController();
  List Pages = [mydasboard(), taskView(), profile()];
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (index) {
                setState(() {
                  _page = index;
                  print(_page);
                });
              },
              letIndexChange: (index) => true,
              backgroundColor: Colors.grey.shade200,
              color: Colors.grey,
              animationDuration: Duration(milliseconds: 300),
              items: const [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ],
            ),
            backgroundColor: Colors.grey[200],
            body: Pages[_page],
            // body: SafeArea(
            //   child: Column(
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "My",
            //                   style: TextStyle(
            //                     fontSize: 28,
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                 ),
            //                 Text(
            //                   "Task",
            //                   style: TextStyle(fontSize: 28),
            //                 ),
            //               ],
            //             ),
            //             // plus button
            //             CircleAvatar(
            //               backgroundColor:
            //                   Colors.grey, // Set the background color to grey
            //               radius:
            //                   15, // Adjust the radius to control the size of the circle
            //               child: Icon(
            //                 Icons.add, // The icon inside the circle
            //                 color: Colors.white, // Set the icon color (optional)
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 25,
            //       ),
            //       Container(
            //         height: 200,
            //         // color: Colors.blue,
            //         child: PageView(
            //           scrollDirection: Axis.horizontal,
            //           controller: _controller,
            //           children: [
            //             for (var item in taskDetail)
            //               Mycard(
            //                   TaskTitle: item['Project']!,
            //                   TaskNumber: item['TaskNo']!,
            //                   createDate: item['TaskDate']!,
            //                   TaskPriority: item['TaskPriority']!,
            //                   AssignTo: item['AssignTo']!,
            //                   SpentHours: item['SpentHours']!,
            //                   TaskStatus: item['TaskStatus']!,
            //                   DueDate: item['DueDate']!,
            //                   color: item['TaskPriority']! == 'high'
            //                       ? Colors.deepPurple[300]
            //                       : item['TaskPriority']! == 'medium'
            //                           ? Colors.blue[300]
            //                           : Colors.green[300])
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       SmoothPageIndicator(
            //         controller: _controller,
            //         count: taskDetail.length,
            //         effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       const Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 30.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             myButton(IconName: Icons.add_circle, TextName: "Add Task"),
            //             myButton(IconName: Icons.person, TextName: "HR"),
            //             myButton(IconName: Icons.group, TextName: "View Team"),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(25.0),
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 Container(
            //                   decoration: BoxDecoration(
            //                       color: Colors.grey[100],
            //                       borderRadius: BorderRadius.circular(12)),
            //                   height: 80,
            //                   padding: EdgeInsets.all(12),
            //                   child: Icon(
            //                     Icons.timeline,
            //                     size: 30,
            //                   ),
            //                 ),
            //                 Column(
            //                   children: [
            //                     Text("History"),
            //                     Text("History of Your Task")
            //                   ],
            //                 ),
            //                 Icon(Icons.arrow_forward_ios)
            //               ],
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}

/*class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _page = index;
            print(_page);
          });
        },
        letIndexChange: (index) => true,
        backgroundColor: Colors.grey.shade200,
        color: Colors.grey,
        animationDuration: Duration(milliseconds: 300),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.email,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}*/
