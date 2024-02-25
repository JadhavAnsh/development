import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:user_application/app_urls.dart';
import 'package:user_application/user_detail_screen.dart';
import 'package:user_application/user_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> userList = [];

  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  void getUsersData() async {
    final dio = Dio();
    final response = await dio.get(AppUrls.getUsersUrls);
    print(response.data);

    for (var json in response.data) {
      User user = User.fromJson(json);
      userList.add(user);

      setState(() {});
    }
  }

  void _navigateDetailsCard(int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => UserDetailsScreen(
        user: userList[index],
      ),
    ));
  }

  Widget _buildUsersInfoCard(User user, int index) {
    return ListTile(
      leading: CircleAvatar(child: Image.network(user.avatar ?? '')),
      title: Text(user.username ?? ''),
      subtitle: Text(user.email ?? ''),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => _navigateDetailsCard(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("HomePage"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: userList.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
        itemBuilder: (context, index) {
          return _buildUsersInfoCard(userList[index], index);
        },
      ),
    );
  }
}
