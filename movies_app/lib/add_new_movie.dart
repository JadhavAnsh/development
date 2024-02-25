import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/movies_model.dart';
import 'package:movies_app/movies_urls.dart';

class AddNewMovie extends StatefulWidget {
  const AddNewMovie({super.key});

  @override
  State<AddNewMovie> createState() => _AddNewMovieState();
}

class _AddNewMovieState extends State<AddNewMovie> {
  final moviesFromKey = GlobalKey<FormState>();
  final titleTextcontroller = TextEditingController();
  final descriptionTextcontroller = TextEditingController();
  final genreTextcontroller = TextEditingController();
  final releaseDateTextcontroller = TextEditingController();
  final watchDateTextcontroller = TextEditingController();

  void addnewmovies() async {
    final dio = Dio();
    String title = titleTextcontroller.text;
    String description = descriptionTextcontroller.text;
    String genre = genreTextcontroller.text;
    String releaseDate = releaseDateTextcontroller.text;
    String watchDate = watchDateTextcontroller.text;

    Movies newMovies = Movies(
      title: title,
      description: description,
      genre: genre,
      releaseDate: releaseDate,
      watchDate: watchDate,
    );

    final response = await dio.post(
      MoviesUrls.postMoviesUrls,
      data: newMovies.toJson(),
    );

    print(response.statusCode);
    print(response);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title: const Text(
          "Add New Movies",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: moviesFromKey,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: titleTextcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Title",
                    prefixIcon:
                        const Icon(Icons.title_outlined, color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: descriptionTextcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Description",
                    prefixIcon: const Icon(Icons.description),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: genreTextcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Genre",
                    prefixIcon: const Icon(Icons.music_note),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: releaseDateTextcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Release Date",
                    prefixIcon: const Icon(Icons.date_range),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: watchDateTextcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Watched Date",
                    prefixIcon: const Icon(Icons.date_range),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: addnewmovies,
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.indigoAccent,
                    fixedSize: const Size(500, 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
