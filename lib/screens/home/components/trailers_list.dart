import 'package:flutter/material.dart';

import 'title_box.dart';
import 'video_card.dart';

class TrailersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.centerStart,
        children: [
          Image.asset(
            'assets/images/trailers-bg.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF032541),
                    const Color(0xFF032541).withOpacity(0.8)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TitleBox(
              title: const Text(
                'Latest Trailers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Container(
                  height: 276,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      VideoCard(),
                      VideoCard(),
                      VideoCard(),
                      VideoCard(),
                      const SizedBox(width: 16),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
