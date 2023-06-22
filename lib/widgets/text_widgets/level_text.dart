import 'package:flutter/material.dart';

class LevelText extends StatelessWidget {

  final String level;

  const LevelText({
    super.key,
    required this.level
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      level,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal
      ),
    );
  }
}