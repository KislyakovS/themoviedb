import 'package:flutter/material.dart';
import 'package:themoviedb/components/default_radial_percent.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:themoviedb/screens/movie_details/movie_details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MovieDetailsScreen.routeName, arguments: MovieDetailsArguments(movie: movie));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(movie.imageName),
                ),
                Positioned(
                  left: 20,
                  bottom: -17,
                  child: SizedBox(
                    width: 44,
                    height: 44,
                    child: DefaultRadialPercent(
                      percent: 0.75,
                      fontSize: 9,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                movie.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                movie.time,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
