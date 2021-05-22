import 'package:flutter/material.dart';
import 'package:themoviedb/components/box_background.dart';
import 'package:themoviedb/components/title_section.dart';

import 'video_card.dart';

class TrailersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: BoxBackground(
        fit: StackFit.expand,
        imageName: 'assets/images/trailers-bg.jpg',
        gradient: LinearGradient(
          colors: [
            const Color(0xFF032541),
            const Color(0xFF032541).withOpacity(0.8)
          ],
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: TitleSection(
            title: const Text(
              'Latest Trailers',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  VideoCard(),
                  VideoCard(),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
