import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news/data/data.dart';
import 'package:news_app/news/data/services/news_urls.dart';

class NewsProvider extends ChangeNotifier {
  bool isLoading = false;

  List<News> newsList = [];

  Future loadData() async {
    final dio = Dio();
    newsList.clear();
    isLoading = true;
    notifyListeners();
    final response = await dio.get(NewsUrls.getnewsurls);
    print(response.data["articles"]);

    for (var json in response.data["articles"]) {
      News news = News.fromJson(json);
      newsList.add(news);
    }

    isLoading = false;

    notifyListeners();
  }
}
