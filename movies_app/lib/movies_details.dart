import 'package:flutter/material.dart';
import 'package:movies_app/movies_model.dart';

class MoviesDetailsScreen extends StatefulWidget {
  final Movies moviesDetails;

  const MoviesDetailsScreen({super.key, required this.moviesDetails});

  @override
  State<MoviesDetailsScreen> createState() => _MoviesDetailsScreenState();
}

class _MoviesDetailsScreenState extends State<MoviesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Movies Details'),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        width: double.maxFinite,
        child: Card(
          child: Column(
            children: [
              ListTile(
                leading: Text('Title'),
                title: Text(widget.moviesDetails.title ?? '-'),
              ),
              Divider(),
              ListTile(
                leading: Text('Description'),
                title: Text(widget.moviesDetails.description ?? '-'),
              ),
              Divider(),
              ListTile(
                leading: Text('Genre'),
                title: Text(widget.moviesDetails.genre ?? '-'),
              ),
              Divider(),
              ListTile(
                leading: Text('Release Date'),
                title: Text(widget.moviesDetails.releaseDate ?? '-'),
              ),
              Divider(),
              ListTile(
                leading: Text('Watched Date'),
                title: Text(widget.moviesDetails.watchDate ?? '-'),
              ),
              Divider(),
              ListTile(
                leading: Text('Is Watched'),
                title: Text(widget.moviesDetails.isWatched! ? 'Yes' : 'No'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
