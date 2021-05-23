import 'package:flutter/material.dart';
import 'package:themoviedb/screens/home/home_screen.dart';
import 'package:themoviedb/screens/movies/movies_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  static String routeName = '/bottom_navigation';

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _screens = [HomeScreen(), MoviesScreen(title: 'Movies',), MoviesScreen(title: 'TV-Show')];

  int _selectedIndex = 0;

  void _onSelectTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV-Show'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People')
        ],
        onTap: _onSelectTap,
      ),
    );
  }
}
