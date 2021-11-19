// import 'package:flutter/material.dart';
// import 'package:health_version_1_0_1/pages/profile.dart';
// import 'package:health_version_1_0_1/pages/status.dart';
//
// // ignore: use_key_in_widget_constructors
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var currentIndex = 1;
//   var pages = [
//     Profile(),
//     Status(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           currentIndex: currentIndex,
//           onTap: (index){
//             setState(() {
//               currentIndex = index ;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person_outline,
//                 ),
//               title: Text('Profile'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               title: Text('Home'),
//             ),
//
//           ]
//       ),
//     );
//   }
// }
