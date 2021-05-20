import 'package:flutter/material.dart';
import 'package:themoviedb/screens/movies/components/movie_card.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

final _demoMovies = [
  Movie(
    imageName: 'assets/images/Invincible.jpg',
    title: 'Invincible',
    time: 'March 26, 2021',
    description:
        'Mark Grayson is a normal teenager except for the fact that his father is the most powerful superhero on the planet. Shortly after his seventeenth birthday, Mark begins to develop powers of his own and enters into his father’s tutelage.',
  ),
  Movie(
    imageName: 'assets/images/Invincible.jpg',
    title: 'The Falcon and the Winter Soldier',
    time: 'March 26, 2021',
    description:
        'Mark Grayson is a normal teenager except for the fact that his father is the most powerful superhero on the planet. Shortly after his seventeenth birthday, Mark begins to develop powers of his own and enters into his father’s tutelage.',
  ),
  Movie(
    imageName: 'assets/images/Invincible.jpg',
    title: 'The Flash',
    time: 'March 26, 2021',
    description:
        'Mark Grayson is a normal teenager except for the fact that his father is the most powerful superhero on the planet. Shortly after his seventeenth birthday, Mark begins to develop powers of his own and enters into his father’s tutelage.',
  )
];

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _searchController = TextEditingController();

  List<Movie> _filterMovies = _demoMovies;

  void _searchMovies() {
    final search = _searchController.text.toLowerCase();

    if (search.isNotEmpty) {
      setState(() {
        _filterMovies = _demoMovies
            .where((Movie movie) => movie.title.toLowerCase().contains(search))
            .toList();
      });
    } else {
      setState(() {
        _filterMovies = _demoMovies;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_searchMovies);
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
              press: () {},
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
