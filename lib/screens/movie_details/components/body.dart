import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';

import 'header.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Header(poster: movie.imageName)],
    );
  }
}
