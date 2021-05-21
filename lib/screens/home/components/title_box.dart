import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  final Text title;
  final List<Widget> children;

  const TitleBox({Key? key, required this.title, required this.children})
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
        ...children
      ],
    );
  }
}
