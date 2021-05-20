import 'package:flutter/material.dart';
import 'components/body.dart';

class MoviesScreen extends StatelessWidget {
  static String routeName = '/movie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Body(),
    );
  }
}
