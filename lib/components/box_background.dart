import 'package:flutter/material.dart';

class BoxBackground extends StatelessWidget {
  final StackFit fit;
  final AlignmentGeometry alignment;
  final String imageName;
  final Gradient? gradient;
  final Widget child;

  const BoxBackground({
    Key? key,
    required this.imageName,
    this.gradient,
    this.fit = StackFit.loose,
    this.alignment = AlignmentDirectional.topStart,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: fit,
      alignment: alignment,
      children: [
        Image.asset(imageName, fit: BoxFit.cover),
        if (gradient != null)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: gradient,
              ),
            ),
          ),
        child
      ],
    );
  }
}
