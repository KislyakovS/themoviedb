import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      width: 300,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/trailers-bg.jpg',
                  fit: BoxFit.cover,
                  height: 169,
                ),
              ),
              const Icon(
                Icons.play_arrow,
                size: 64,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Brooklyn Nine-Nine',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'The Nine-Nine\'s Going Out in a Blaze of Glory - Brooklyn Nine-Nine',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
