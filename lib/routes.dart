import 'package:flutter/material.dart';
import 'package:themoviedb/screens/auth/auth_screen.dart';
import 'package:themoviedb/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AuthScreen.routeName: (context) => AuthScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
