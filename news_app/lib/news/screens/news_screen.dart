import 'package:flutter/material.dart';
import 'package:news_app/news/news.dart';
import '../data/models/news_models.dart';

class News_Screen extends StatefulWidget {
  const News_Screen({super.key});

  @override
  State<News_Screen> createState() => _News_ScreenState();
}

class _News_ScreenState extends State<News_Screen> {
  List<News> newsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: const Text(
          "News",
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Infocard();
        },
      ),
    );
  }
}
