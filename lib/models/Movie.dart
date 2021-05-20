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

final demoMovies = [
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
