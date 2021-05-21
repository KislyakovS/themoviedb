import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:themoviedb/screens/home/components/header.dart';
import 'package:themoviedb/screens/home/components/movies_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Header(),
        const SizedBox(height: 30),
        PopularList(
          title: 'What\'s Popular',
          movies: demoMovies,
        ),
        PopularList(
          title: 'Free To Watch',
          movies: demoMovies,
        ),
        PopularList(
          title: 'Trending',
          movies: demoMovies,
        )
      ],
    );
  }
}
