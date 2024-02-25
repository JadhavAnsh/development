import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/add_new_movie.dart';
import 'package:movies_app/movies_details.dart';
import 'package:movies_app/movies_model.dart';
import 'package:movies_app/movies_urls.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movies> moviesList = [];

  @override
  void initState() {
    super.initState();
    getMoviesData();
  }

  void getMoviesData() async {
    final dio = Dio();
    final response = await dio.get(MoviesUrls.postMoviesUrls);
    print(response.data);

    for (var json in response.data) {
      Movies movie = Movies.fromJson(json);
      moviesList.add(movie);
    }

    setState(() {});
  }

  void _addNewMovie() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => AddNewMovie(),
    ));
    moviesList.clear();
    getMoviesData();
  }

  void _navigateToDetailsScreen(Movies movies) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MoviesDetailsScreen(moviesDetails: movies),
    ));
  }

  Widget _buildMovieInfoCard(Movies movies) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(movies.title![0].toUpperCase()),
      ),
      title: Text(movies.title ?? ''),
      subtitle: Text(movies.description ?? ''),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {
        _navigateToDetailsScreen(movies);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("HomePage"),
        centerTitle: true,
        actions: [
          // IconButton(
          //   onPressed: deleteCheckedTask,
          //   icon: Icon(Icons.delete_forever),
          //   color: Colors.black,
          // ),
          IconButton(
            onPressed: _addNewMovie,
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: moviesList.length,
        separatorBuilder: (context, index) => Divider(height: 0),
        itemBuilder: (context, index) {
          return _buildMovieInfoCard(moviesList[index]);
        },
      ),
    );
  }
}
