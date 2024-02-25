import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:users_app/app_urls.dart';
import 'package:users_app/movie_model.dart';
import 'package:users_app/new_movie.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movie> moviesList = [];

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getMoviesData();
  }

  void addNewMovie() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NewMovie(),
      ),
    );

    getMoviesData();
  }

  void getMoviesData() async {
    isLoading = true;
    moviesList.clear();
    setState(() {});

    final dio = Dio();
    final response = await dio.get(AppUrls.postMovieUrl);
    print(response.data);

    for (var json in response.data) {
      Movie movie = Movie.fromJson(json);
      moviesList.add(movie);
    }

    isLoading = false;
    setState(() {});
  }

  Widget _buildMovieInfoCard(Movie movieDetails) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(movieDetails.title![0].toUpperCase()),
      ),
      title: Text(
        movieDetails.title ?? "",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(movieDetails.description ?? ""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Movies'),
        actions: [
          IconButton(
            onPressed: addNewMovie,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Visibility(
        visible: isLoading,
        child: Center(
          child: CircularProgressIndicator(),
        ),
        replacement: ListView.separated(
          itemCount: moviesList.length,
          separatorBuilder: (context, index) => Divider(height: 0),
          itemBuilder: (context, index) {
            return _buildMovieInfoCard(moviesList[index]);
          },
        ),
      ),
    );
  }
}
