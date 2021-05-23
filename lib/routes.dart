import 'package:flutter/material.dart';
import 'package:themoviedb/screens/auth/auth_screen.dart';
import 'package:themoviedb/screens/bottom_navigation/bottom_navigation_screen.dart';
import 'package:themoviedb/screens/home/home_screen.dart';
import 'package:themoviedb/screens/movie_details/movie_details_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AuthScreen.routeName: (context) => AuthScreen(),
  BottomNavigationScreen.routeName: (context) => BottomNavigationScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MovieDetailsScreen.routeName: (context) => MovieDetailsScreen()
};
