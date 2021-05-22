import 'package:flutter/material.dart';
import 'package:radial_percent/radial_percent.dart';

class DefaultRadialPercent extends StatelessWidget {
  final double percent;
  final double? fontSize;

  const DefaultRadialPercent(
      {Key? key, required this.percent, this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadialPercent(
      percent: percent,
      fillColor: Color.fromARGB(255, 10, 23, 25),
      lineColor: Color.fromARGB(255, 37, 203, 103),
      freeColor: Color.fromARGB(255, 25, 54, 31),
      lineWidth: 3,
      child: Text(
        '75%',
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
