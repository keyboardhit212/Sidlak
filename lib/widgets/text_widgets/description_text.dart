import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {

  final String description;

  const DescriptionText({
    super.key,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 33.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold
      ),
    );
  }
}