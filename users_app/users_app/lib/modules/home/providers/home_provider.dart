import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:users_app/data/models/project_model.dart';

class HomeProvider extends ChangeNotifier {
  int count = 0;
  bool isLoading = false;

  List<Project> projectList = [];

  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCounter() {
    count--;
    notifyListeners();
  }

  Future loadData() async {
    final dio = Dio();
    projectList.clear();
    isLoading = true;
    notifyListeners();
    final response = await dio.get('https://65dad98bbcc50200fcdd3f7c.mockapi.io/api/projects');
    print(response);

    for (var json in response.data) {
      Project project = Project.fromJson(json);
      projectList.add(project);
    }

    isLoading = false;

    notifyListeners();
  }
}
