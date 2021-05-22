import 'package:flutter/material.dart';
import 'package:themoviedb/components/title_section.dart';
import 'package:themoviedb/models/Movie.dart';

import 'movie_card.dart';

class MoviesList extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const MoviesList({Key? key, required this.title, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleSection(
      title: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      child: Container(
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            ...movies.map((movie) => MovieCard(movie: movie)).toList(),
            const SizedBox(width: 16)
          ],
        ),
      ),
    );
  }
}
