import 'package:flutter/material.dart';
import 'package:news_app/news/data/data.dart';

class Infocard extends StatelessWidget {
  // final News news;
  const Infocard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://images.pexels.com/photos/14706932/pexels-photo-14706932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            const SizedBox(
              height: 8,
            ),
            Text("Title:"),
            const SizedBox(
              height: 8,
            ),
            Text("Description: "),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Published At"),
                Text("Channel"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
