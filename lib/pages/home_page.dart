import 'package:flutter/material.dart';
import 'package:sidlak/models/answer.dart';
import 'package:sidlak/utilities/question_provider.dart';
import 'package:sidlak/utilities/theme_music.dart';
import 'package:sidlak/widgets/choice_button.dart';
import 'package:sidlak/widgets/header.dart';
import 'package:sidlak/widgets/level_entry_loading.dart';
import 'package:sidlak/widgets/tool_bar.dart';
import 'package:sidlak/widgets/level_entry.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  QuestionProvider questionProvider = QuestionProvider();


  @override
  void initState() {
    super.initState();
    ThemeMusic.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ToolBar(),
                const Header(),
                LevelEntry(
                  key: UniqueKey(),
                  description: 'Matter',
                  image: 'assets/images/icons/electron.png',
                  level: 'level 1',
                  locked: false,
                  colors: const [Color(0xFF2F58CD), Color(0xFF3795BD)],
                  id: 1,
                  phrase: 'Are you ready to delve in the world of Matter and explore the world around us? Tap the button to play!',
                ),
                LevelEntry(
                  key: UniqueKey(),
                  description: 'Living Things',
                  image: 'assets/images/icons/dog.png',
                  level: 'level 2',
                  locked: false,
                  colors: const [Color(0xFFFF4A4A), Color(0xFFFF9551)],
                  id: 2,
                  phrase: 'See the amazing world of Flora and Fauna in your very eyes in this quiz! Tap the button to play!!',
                ),
                LevelEntry(
                  key: UniqueKey(),
                  description: 'Force & Motion',
                  image: 'assets/images/icons/pendulum.png',
                  level: 'level 3',
                  locked: false,
                  colors: const [Color(0xFFFFB200), Color(0xFF97DBAE)],
                  id: 3,
                  phrase: 'Assimilate the laws of physics as you go through the principles of Force and Motion? Tap the button to play!',
                ),
                LevelEntry(
                  key: UniqueKey(),
                  description: 'Earth',
                  image: 'assets/images/icons/earth.png',
                  level: 'level 4',
                  locked: false,
                  colors: const [Color(0xFF411530), Color(0xFFD1512D)],
                  id: 4,
                  phrase: 'Do you want to see the vast realities of the world we do live in? Tap the button to play!',
                )
              ],
            ),
          ),
        )
      )
    );
  }
}