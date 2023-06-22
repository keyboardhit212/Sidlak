import 'package:flutter/material.dart';

class PhraseText extends StatelessWidget {

  final String phrase;

  const PhraseText({
    super.key,
    required this.phrase
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      phrase,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        
      ),
      textAlign: TextAlign.justify,
    );
  }
}