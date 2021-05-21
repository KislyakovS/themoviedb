import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';

import 'movie_card.dart';
import 'title_box.dart';

class PopularList extends StatelessWidget {
  final Text title;
  final List<Movie> movies;

  const PopularList({Key? key, required this.title, required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleBox(
      title: title,
      children: [
        Container(
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              ...movies.map((movie) => MovieCard(movie: movie)).toList(),
              const SizedBox(width: 16)
            ],
          ),
        )
      ],
    );
  }
}
