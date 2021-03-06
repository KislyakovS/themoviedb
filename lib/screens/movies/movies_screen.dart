import 'package:flutter/material.dart';
import 'components/body.dart';

class MoviesScreen extends StatelessWidget {
  static String routeName = '/movie';

  final String title;

  const MoviesScreen({Key? key, required this.title}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Body(),
    );
  }
}
