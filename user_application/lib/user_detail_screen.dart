import 'package:flutter/material.dart';
import 'package:user_application/user_model.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key, required this.user});
  final User user;

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("User details"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        height: 300,
        width: double.infinity,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'User ID : ${widget.user.id ?? ""} ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'UID: ${widget.user.uid}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'First Name: ${widget.user.firstName}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Last Name: ${widget.user.lastName}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'DOB : ${widget.user.dateOfBirth}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Gender : ${widget.user.gender}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Phone No. : ${widget.user.phoneNumber}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Employment Title. : ${widget.user.employment!.title}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Country: ${widget.user.address!.country}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Credit Card No. : ${widget.user.creditCard!.ccNumber}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Social Insurance No. : ${widget.user.socialInsuranceNumber}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
