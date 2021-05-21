import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:themoviedb/screens/movie_details/components/actors.dart';
import 'package:themoviedb/screens/movie_details/components/info.dart';

import 'header.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 35),
      children: [
        Header(poster: movie.imageName),
        Info(movie: movie),
        const SizedBox(height: 20),
        Actors(),
      ],
    );
  }
}
