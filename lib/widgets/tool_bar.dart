import 'package:flutter/material.dart';
import 'package:sidlak/pages/instruction_page.dart';
import 'package:sidlak/widgets/music_theme_button.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => InstructionPage()
              )
            );
          }, 
          icon: const Icon(Icons.info),
          color: Colors.blue,
          iconSize: 35.0,
        )
      ],
    );
  }
}