import 'package:flutter/material.dart';
import 'package:themoviedb/screens/auth/auth_model.dart';
import 'package:themoviedb/screens/auth/auth_screen.dart';
import 'package:themoviedb/screens/bottom_navigation/bottom_navigation_screen.dart';
import 'package:themoviedb/screens/home/home_screen.dart';
import 'package:themoviedb/screens/movie_details/movie_details_screen.dart';
import 'package:themoviedb/screens/people/people_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AuthScreen.routeName: (context) => AuthProvider(
        model: AuthModel(),
        child: AuthScreen(),
      ),
  BottomNavigationScreen.routeName: (context) => BottomNavigationScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MovieDetailsScreen.routeName: (context) => MovieDetailsScreen(),
  PeopleScreen.routeName: (context) => PeopleScreen()
};
