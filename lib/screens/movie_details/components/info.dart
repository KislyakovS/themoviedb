import 'package:flutter/material.dart';
import 'package:radial_percent/radial_percent.dart';
import 'package:themoviedb/components/default_radial_percent.dart';
import 'package:themoviedb/models/Movie.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  final Movie movie;

  const Info({Key? key, required this.movie}) : super(key: key);

  void _openTraler() async {
    const url = 'https://www.youtube.com/watch?v=-bfAVpuko5o';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0d0d09),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 20),
          _buildScore(),
          const SizedBox(height: 20),
          _buildOverview(),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Row _buildScore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: Container(
          child: Row(
            children: [
              Container(
                width: 55,
                height: 55,
                child: DefaultRadialPercent(percent: 0.72),
              ),
              const SizedBox(width: 10),
              const Text(
                'User Score',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )),
        Container(
          width: 1,
          height: 25,
          color: Colors.white30,
        ),
        Expanded(
          child: TextButton(
            onPressed: _openTraler,
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.white.withOpacity(0.1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                const SizedBox(width: 6),
                const Text(
                  'Play Traler',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Column _buildOverview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Overview',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          movie.description,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  RichText _buildTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: movie.title,
        style: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        children: [
          const TextSpan(
            text: ' (2021)',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 19,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
