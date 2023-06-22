
import 'package:flutter/material.dart';

class LevelEntryLoading extends StatelessWidget {
  const LevelEntryLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 280,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: const LinearGradient(
                    colors: [Colors.grey, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight
                  )
                ),
                height: 200.0,
              ),
            )
          ),
          const Positioned(
            right: 30.0,
            top: 65.0,
            child: CircularProgressIndicator(
              color: Colors.pink,
            )
          ),
          Positioned(
            left: 20.0,
            top: 105.0,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))
              ),
              child: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
            )
          ),
          const Positioned(
            left: 20.0,
            top: 170.0,
            child: Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal
              ),
            ),
          ),
          const Positioned(
            left: 20.0,
            top: 195.0,
            child: Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}