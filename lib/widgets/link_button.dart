import 'package:flutter/material.dart';

class LinkButton extends StatefulWidget {
  const LinkButton({super.key});

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {

  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _changeAppearance();
        });
      }, 
      icon: Icon(
        Icons.copy,
        color: color,
        size: 35.0,
      )
    );
  }

  void _changeAppearance() {
    color = Colors.green;
  }
}