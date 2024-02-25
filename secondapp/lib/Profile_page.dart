// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Profile_page(),
//     );
//   }
// }

// class Profile_page extends StatelessWidget {
//   const Profile_page({super.key});

//   Widget _buildRowCard({
//     String? upperText,
//     String? lowerText,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const Padding(padding: EdgeInsets.all(12)),
//         Text(
//           upperText ?? '',
//           style: const TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//         const SizedBox(
//           height: 4,
//         ),
//         Text(
//           lowerText ?? '',
//           style: const TextStyle(
//             color: Colors.grey,
//             fontSize: 18,
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Profile Page'),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: const EdgeInsets.all(16),
//             color: Colors.white,
//             child: Row(
//               children: [
//                 Container(
//                   height: 100,
//                   width: 80,
//                   alignment: Alignment.center,
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Text(
//                     "KJ",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 30,
//                 ),
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Kylie jenner",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                     ),
//                     Text(
//                       "Fashion",
//                       style: TextStyle(color: Colors.grey, fontSize: 14),
//                     ),
//                     Text(
//                       "Model",
//                       style: TextStyle(color: Colors.black, fontSize: 14),
//                     ),
//                     Text(
//                       "www.thekyliejenner.com",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 30, 138, 227),
//                           fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Divider(
//             color: Colors.black,
//             thickness: 2,
//             indent: 10,
//             endIndent: 10,
//           ),
//           Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildRowCard(lowerText: "Posts", upperText: "490"),
//                 _buildRowCard(lowerText: "Followers", upperText: "120k"),
//                 _buildRowCard(lowerText: "Following", upperText: "80k"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
