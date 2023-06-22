import 'package:flutter/material.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: _headerText("ABOUT", Colors.blue),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _descriptionText(
                  "Sidlak is a non-profit mobile app that aims to give students mastery of the course material. Through sheer grit and repetition, imbued with " +
                  "visually appealing interface, mesmerizing music and most importantly fun, we believe that we can furnish the children more learning through it. "
                  "After all children learns best when playing! So what are you waiting for? Play now!"
                ),
                const SizedBox(height: 20),
                _salutationText("By: Mr. Ernie Lumawag"),
                const SizedBox(height: 50),
                _headerText("INSTRUCTIONS", Colors.blue),
                const SizedBox(height: 20),
                _descriptionText(
                  "1. Once you have opened the app, you will be redirected to the Home page where you can see several categories listed: "
                ),
                const SizedBox(height: 20),
                _displayImage("categories.png"),
                const SizedBox(height: 20),
                _descriptionText(
                  "2. Choose any of the 4 categories listed: Matter, Living things, Force & Motion and Earth. They all vary in difficulty but you can choose whichever you want."
                ),
                const SizedBox(height: 30),
                _descriptionText(
                  "3. Once you have a chosen a category, you will be redirected to a confirmation page which prompts you to proceed:"
                ),
                const SizedBox(height: 20),
                _displayImage("confirmation.png"),
                const SizedBox(height: 20),
                _descriptionText(
                  "4. Click the play button! Afterwards you will be redirected to the quiz page where your knowledge will be tested!"
                ),
                const SizedBox(height: 30),
                _descriptionText(
                  "5. Once you are in the quiz page you will be presented with a question and several answers. Choose the appropriate answer according the the question asked!"
                ),
                const SizedBox(height: 20),
                _displayImage("choices.png"),
                const SizedBox(height: 20),
                _descriptionText(
                  "6. Once you have a selected an answer, the button will light up either Green or Red. Green is for correct and Red is for wrong! "
                  "The question will automatically update and present you with new choices to choose from."
                ),
                const SizedBox(height: 20),
                _descriptionText(
                  "7. Once all the questions have been answered, an alert dialog will display containing your score! Afterwhich you must press the Main Menu to "
                  "go back to the Home Page and choose another category to embark with."
                ),
                const SizedBox(height: 20),
                _displayImage("score.png")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _headerText(String text, [Color color = Colors.black]) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Text _descriptionText(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      softWrap: true,
      style: const TextStyle(
        height: 1.2,
        fontSize: 16.0,
      ),
    );
  }

  Text _salutationText(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      softWrap: true,
      style: const TextStyle(
        height: 1.2,
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Image _displayImage(String name) {
    return Image.asset(
      "assets/images/about/$name",
      width: 200.0,
    );
  }
  

}