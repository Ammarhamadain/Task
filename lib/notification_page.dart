// import 'package:flutter/material.dart';

// import 'package:flutter_slidable/flutter_slidable.dart';


// class NotificationPage extends StatelessWidget {
//   get scrollDirection => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text('Notifications', style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           ToggleButtons(
//             isSelected: [true, false],
//             onPressed: (index) {},
//             selectedColor: Colors.white,
//             fillColor: Colors.blue,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Text('Message'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Text('Notification'),
//               ),
//             ],
//           ),
//           Expanded(
//             child: ListView( addAutomaticKeepAlives:false ,
//               children: 
//               [
                     
//                 NotificationTile(
//                   icon: Icons.message,
//                   title: 'Bert Pullman',
//                   subtitle: 'Congratulations on completing the first lesson, keep up the good work!',
//                   time: '04:32 pm',
//                 ),
//                 NotificationTile(
//                   icon: Icons.message,
//                   title: 'Daniel Lawson',
//                   subtitle: 'Your course has been updated, you can check the new course in your study course.',
//                   time: '04:32 pm',
//                 ),
//                 NotificationTile(
//                   icon: Icons.message,
//                   title: 'Nguyen Shane',
//                   subtitle: 'Congratulations, you have completed your...',
//                   time: '12:00 am',
//                 ),
                
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NotificationTile extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;
//   final String time;

//   const NotificationTile({
//     required this.icon,
//     required this.title,
//     required this.subtitle,
//     required this.time,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.white),
//       title: Text(title, style: TextStyle(color: Colors.white)),
//       subtitle: Text(subtitle, style: TextStyle(color: Colors.white60)),
//       trailing: Text(time, style: TextStyle(color: Colors.white60)),
//     );
//   }
// }