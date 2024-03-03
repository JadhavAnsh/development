import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_app/modules/home/home_index.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    count = Provider.of<HomeProvider>(context).count;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter'),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed:
                      Provider.of<HomeProvider>(context).incrementCounter,
                  child: Text('Increment'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed:
                      Provider.of<HomeProvider>(context).decrementCounter,
                  child: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
