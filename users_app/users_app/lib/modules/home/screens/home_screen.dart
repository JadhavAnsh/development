import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_app/modules/home/home_index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, homeProvider, child) {
          return Visibility(
            visible: homeProvider.isLoading,
            child: Center(child: CircularProgressIndicator()),
            replacement: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counter'),
                Text(
                  homeProvider.count.toString(),
                  style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 56),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: homeProvider.incrementCounter,
                      child: Text('Increment'),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: homeProvider.decrementCounter,
                      child: Text('Decrement'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: homeProvider.loadData,
                  child: Text('Load Data'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
