import 'package:flutter/material.dart';

class FacebookButton extends StatefulWidget {
  const FacebookButton({super.key});

  @override
  State<FacebookButton> createState() => _FacebookButtonState();
}

class _FacebookButtonState extends State<FacebookButton> {

  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: () {
        setState(() {
          _changeAppearance();
        });
      }, 
      icon: Icon(
        Icons.facebook,
        color: color,
        size: 35.0,
      )
    );
  }

  void _changeAppearance() {
    color = Colors.green;
  }
}