import 'package:flutter/material.dart';
import 'package:space/screens/quizz_screen.dart';
import 'package:space/ui/shared/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  static const routeName = '/game'; // Define a named route for this screen
  @override
  _MainMenuState createState() => _MainMenuState();
}

// This screen has the UI for the MainMenu of the Game Feature
class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor, // Set the background color
      body: Container(
        //The following is the background image of the App
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./assets/images/quiz_hero.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 48.0,
            horizontal: 12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                //The following is the Game title
                child: Text(
                  "Stellar Quiz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: RawMaterialButton(
                    onPressed: () {
                      // Navigating to the Quiz Screen when the button is pressed
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizzScreen(),
                          ));
                    },
                    shape: const StadiumBorder(),
                    fillColor:
                        AppColor.secondaryColor, // Set button background color
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: Text(
                        "Start the Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
