import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.poster,
  }) : super(key: key);

  final String poster;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Image.asset(
          'assets/images/Invincible-bg.jpg',
        ),
        const Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              poster,
              width: 100,
            ),
          ),
        )
      ],
    );
  }
}
