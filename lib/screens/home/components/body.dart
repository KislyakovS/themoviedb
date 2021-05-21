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
        PopularList(
          title: const Text(
            'What\'s Popular',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          movies: demoMovies,
        ),
        PopularList(
          title: const Text(
            'Free To Watch',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          movies: demoMovies,
        ),
        TrailersList(),
        const SizedBox(height: 20),
        PopularList(
          title: const Text(
            'Trending',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          movies: demoMovies,
        ),
      ],
    );
  }
}
