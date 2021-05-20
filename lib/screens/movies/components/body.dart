import 'package:flutter/material.dart';
import 'package:themoviedb/screens/movies/components/movie_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
          return MovieCard(
            press: () {},
          );
        },
      ),
    );
  }
}
