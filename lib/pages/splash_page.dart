import 'package:flutter/material.dart';
import 'package:sidlak/pages/home_page.dart';
import 'package:sidlak/widgets/logo.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({super.key});

  
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }),
        (route) => false,
      );
    });

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF2F58CD), Color(0xFF3795BD)]
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Logo()
            ),
            SizedBox(height: 120,),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(
                color: Colors.amber,
                strokeWidth: 7.0,
              )
            ),
            Text(
              'Loading',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}