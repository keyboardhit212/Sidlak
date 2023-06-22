import 'package:flutter/material.dart';
import 'package:sidlak/pages/confirmation_page.dart';
import 'package:flutter/services.dart';
import 'package:sidlak/utilities/select_sound.dart';
import 'package:sidlak/utilities/invalid_sound.dart';


//ignore: must_be_immutable
class LevelEntry extends StatefulWidget {

  bool locked;
  String level;
  String description;
  String image;
  String phrase;
  List<Color> colors;
  int id;

  LevelEntry({
    super.key,
    this.locked = true,
    required this.level,
    required this.description,
    required this.image,
    required this.colors,
    required this.id,
    required this.phrase
  });

  @override
  // ignore: no_logic_in_create_state
  State<LevelEntry> createState() => _LevelEntryState(
    locked: locked,
    level: level,
    description: description,
    image: image,
    colors: colors,
    id: id,
    realColors: colors,
    phrase: phrase
  );
}

class _LevelEntryState extends State<LevelEntry> {

  bool locked;
  String level;
  String description;
  String image;
  String phrase;
  List<Color> colors;
  final List<Color> selectionColor = [Colors.amber, Colors.amber];
  List<Color> realColors;
  int id;
  

  _LevelEntryState({
    required this.locked,
    required this.level,
    required this.description,
    required this.image,
    required this.colors,
    required this.id,
    required this.realColors,
    required this.phrase
  });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
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
              onTap: () async {
                SelectSound.play();
                await Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) {
                    return ConfirmationPage(
                      id: id, 
                      image: image, 
                      level: level, 
                      description: description, 
                      phrase: phrase, 
                      colors: realColors);
                  })
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: colors,
                    begin: Alignment.topLeft,
                    end: Alignment.topRight
                  )
                ),
                height: 200.0,
              ),
            )
          ),
          Positioned(
            right: 30.0,
            top: 30.0,
            child: Image.asset(
              image,
              width: 120.0
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
              child: Icon(
                (widget.locked) ? Icons.lock : Icons.play_arrow,
                color: Colors.white,
              ),
            )
          ),
          Positioned(
            left: 20.0,
            top: 170.0,
            child: Text(
              level,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                decoration: ((locked) ? TextDecoration.lineThrough : TextDecoration.none),
                decorationThickness: 2.0,
                decorationColor: Colors.white
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 195.0,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 33.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                decoration: ((locked) ? TextDecoration.lineThrough : TextDecoration.none),
                decorationThickness: 3.0,
                decorationColor: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }

}