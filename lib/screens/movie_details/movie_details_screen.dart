import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';
import 'components/body.dart';

class MovieDetailsScreen extends StatelessWidget {
  static String routeName = '/movie_details';
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as MovieDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.movie.title),
      ),
      body: Body(movie: arguments.movie),
    );
  }
}

class MovieDetailsArguments {
  final Movie movie;

  MovieDetailsArguments({required this.movie});
}
