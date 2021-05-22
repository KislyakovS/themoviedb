import 'package:flutter/material.dart';
import 'package:themoviedb/components/box_background.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BoxBackground(
      alignment: AlignmentDirectional.centerStart,
      imageName: 'assets/images/home_header_bg.jpg',
      gradient: LinearGradient(
        colors: [
          const Color(0xFF032541),
          const Color(0xFF032541).withOpacity(0.8)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Millions of movies, TV shows and people to discover. Explore now.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
