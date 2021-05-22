import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final Widget title;
  final Widget child;

  const TitleSection({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: title,
        ),
        const SizedBox(height: 20),
        child
      ],
    );
  }
}
