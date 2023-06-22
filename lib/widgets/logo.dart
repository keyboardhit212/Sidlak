import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 200,
        ),
        const SizedBox(height: 5,),
        const Text(
          'SIDLAK',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 50.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}