import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Play Now!',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w900,
              height: 0.0,
              fontSize: 50.0,
              letterSpacing: 0.0
            ),
          ),
          Text(
            'Test your knowledge and skills!',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 12.0,
              height: 0.0,
              letterSpacing: 0.0
            ),
          )
        ],
      ),
    );
  }
}