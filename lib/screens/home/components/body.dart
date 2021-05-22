import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:themoviedb/screens/home/components/header.dart';
import 'package:themoviedb/screens/home/components/movies_list.dart';

import 'trailers_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Header(),
        const SizedBox(height: 30),
        MoviesList(title: 'What\'s Popular', movies: demoMovies),
        MoviesList(title: 'Free To Watch', movies: demoMovies),
        TrailersList(),
        const SizedBox(height: 30),
        MoviesList(title: 'Trending', movies: demoMovies),
      ],
    );
  }
}
