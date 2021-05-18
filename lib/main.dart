import 'package:flutter/material.dart';
import 'package:themoviedb/screens/auth/auth_screen.dart';

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
        appBarTheme: const AppBarTheme(color: Color(0xFF042541)),
        primarySwatch: Colors.blue,
      ),
      home: AuthScreen(),
    );
  }
}
