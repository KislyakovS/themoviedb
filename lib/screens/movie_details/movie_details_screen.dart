import 'package:flutter/material.dart';
import 'package:themoviedb/screens/movies/components/body.dart';

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
    );
  }
}

class MovieDetailsArguments {
  final Movie movie;

  MovieDetailsArguments({required this.movie});
}
