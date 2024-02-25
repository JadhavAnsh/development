// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//         ),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(
//         title: 'Icon App',
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//     required this.title,
//   });

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Widget _buildRowCard(
//     String title,
//     IconData icon,
//     Color iconColor,
//   ) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(18),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Icon(
//               icon,
//               color: iconColor,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(title),
//         ],
//       ),
//     );
//   }

//   Widget _buildColumnCard({
//     IconData? icon,
//     String? upperText,
//     String? lowerText,
//     String? price,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(
//               icon,
//               size: 40,
//               color: Colors.black,
//             ),
//           ),
//           const SizedBox(
//             width: 24,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   upperText ?? '',
//                   style: const TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   lowerText ?? '',
//                   style: const TextStyle(fontSize: 14, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           Text(
//             price ?? '',
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(
//           widget.title,
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 120,
//             color: Colors.grey.shade100,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildRowCard(
//                   'Wallet',
//                   Icons.account_balance_wallet,
//                   Colors.blue,
//                 ),
//                 _buildRowCard(
//                   'Statictes',
//                   Icons.query_stats,
//                   Colors.red,
//                 ),
//                 _buildRowCard(
//                   'Portfolio',
//                   Icons.graphic_eq,
//                   Colors.yellow,
//                 ),
//                 _buildRowCard(
//                   'Stock',
//                   Icons.trending_up,
//                   Colors.green,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(16),
//             child: const Text('Recent Transaction',
//                 style: TextStyle(fontSize: 20, color: Colors.black)),
//           ),
//           Container(
//             width: double.infinity,
//             height: 350,
//             color: Colors.grey.shade100,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 _buildColumnCard(
//                     icon: Icons.lunch_dining,
//                     upperText: "McDoland",
//                     lowerText: "Today, 17:45 PM",
//                     price: "-₹244"),
//                 _buildColumnCard(
//                     icon: Icons.local_pizza,
//                     upperText: "PizzaHut",
//                     lowerText: "March 10, 13:00 PM",
//                     price: "-₹200"),
//                 _buildColumnCard(
//                     icon: Icons.shopping_cart,
//                     upperText: "Amazon",
//                     lowerText: "Today, 07:30 AM",
//                     price: "-₹500"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
