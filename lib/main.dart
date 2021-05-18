import 'package:flutter/material.dart';
import 'package:themoviedb/routes.dart';
import 'package:themoviedb/screens/bottom_navigation/bottom_navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(color: Color(0xFF042541), centerTitle: true),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF042541),
          unselectedItemColor: Colors.grey,
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: BottomNavigationScreen.routeName,
      routes: routes,
    );
  }
}
