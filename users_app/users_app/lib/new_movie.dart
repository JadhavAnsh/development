import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:users_app/app_urls.dart';
import 'package:users_app/movie_model.dart';

class NewMovie extends StatefulWidget {
  const NewMovie({super.key});

  @override
  State<NewMovie> createState() => _NewMovieState();
}

class _NewMovieState extends State<NewMovie> {
  final titleTextController = TextEditingController();

  void addMovie() async {
    final dio = Dio();
    Movie newMovie = Movie(
      title: titleTextController.text,
      description: "Description",
      genre: "Action",
      isWatched: false,
      releaseDate: "",
      watchDate: "",
    );

    final response = await dio.post(
      AppUrls.postMovieUrl,
      data: newMovie.toJson(),
    );

    print(response.statusCode);
    print(response);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('New Movie'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: titleTextController,
          ),
          ElevatedButton(
            onPressed: addMovie,
            child: Text(
              'Save',
            ),
          ),
        ],
      ),
    );
  }
}
