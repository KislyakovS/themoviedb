import 'package:flutter/material.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:themoviedb/screens/movie_details/movie_details_screen.dart';
import 'package:themoviedb/screens/movies/components/movie_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _searchController = TextEditingController();

  List<Movie> _filterMovies = demoMovies;

  void _searchMovies() {
    final search = _searchController.text.toLowerCase();

    if (search.isNotEmpty) {
      setState(() {
        _filterMovies = demoMovies
            .where((Movie movie) => movie.title.toLowerCase().contains(search))
            .toList();
      });
    } else {
      setState(() {
        _filterMovies = demoMovies;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    Navigator.pushNamed(
      context,
      MovieDetailsScreen.routeName,
      arguments: MovieDetailsArguments(movie: _filterMovies[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filterMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            return MovieCard(
              movie: _filterMovies[index],
              press: () => _onMovieTap(index),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              filled: true,
              fillColor: Colors.white.withOpacity(0.95),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
