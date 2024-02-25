import 'package:flutter/material.dart';
import 'package:users_app/user_model.dart';

class UserDetailsScreen extends StatefulWidget {
  final User userDetails;

  const UserDetailsScreen({super.key, required this.userDetails});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('User Details'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            width: double.maxFinite,
            child: Card(
              child: Column(
                children: [
                  Text('Date of Birth'),
                  Text(widget.userDetails.dateOfBirth ?? '-'),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            width: double.maxFinite,
            child: Card(
              child: Column(
                children: [
                  Text('Gender'),
                  Text(widget.userDetails.gender ?? '-'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
