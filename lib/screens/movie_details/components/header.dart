import 'package:flutter/material.dart';
import 'package:themoviedb/components/box_background.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.poster,
  }) : super(key: key);

  final String poster;

  @override
  Widget build(BuildContext context) {
    return BoxBackground(
      alignment: AlignmentDirectional.centerStart,
      imageName: 'assets/images/Invincible-bg.jpg', 
      gradient: const LinearGradient(
        colors: [Colors.black, Colors.transparent],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            poster,
            width: 100,
          ),
        ),
      ),
    );
  }
}