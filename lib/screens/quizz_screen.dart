// Import necessary Flutter packages and custom modules
import 'package:flutter/material.dart';
import 'package:space/data/questions_example.dart';
import 'package:space/screens/result_screen.dart';
import 'package:space/ui/shared/color.dart';

// This screen represents the UI for the Quiz Section of the App
// The information for this page is available in the question_example.dart file in the data directory
class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        PageController(initialPage: 0); // Initialize the PageController
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "./assets/images/quiz_bg.png"), // Set background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: PageView.builder(
              controller: _controller!,
              onPageChanged: (page) {
                if (page == questions.length - 1) {
                  setState(() {
                    btnText =
                        "See Results"; // Update button text when reaching the last question
                  });
                }
                setState(() {
                  answered =
                      false; // Reset answered status when moving to a new question
                });
              },
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        //displaying the text for the questions in the quiz
                        "Question ${index + 1}/10",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Text(
                        "${questions[index].question}", // Display the current question
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),

                    //updating the index inorder for the questions to change
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 12.0, right: 12.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                                  ? Colors.green
                                  : Colors.red
                              : AppColor.secondaryColor,
                          onPressed: !answered
                              ? () {
                                  // Show a modal bottom sheet with additional information on tap
                                  showModalBottomSheet(
                                      backgroundColor:
                                          const Color.fromARGB(255, 14, 24, 78),
                                      context: context,
                                      builder: (_) {
                                        return GestureDetector(
                                          onTap: () {},
                                          onDoubleTap: () => {},
                                          //
                                          behavior: HitTestBehavior.opaque,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 21, 21, 26),
                                                    Color.fromARGB(
                                                        255, 0, 0, 0),
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter),
                                            ),
                                            width: 30,
                                            height: 390,
                                            padding: EdgeInsets.all(30),
                                            child: Text(
                                              questions[index]
                                                  .facts, // Display additional facts
                                              textScaleFactor: 1.2,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                              selectionColor:
                                                  const Color.fromARGB(
                                                      225, 248, 235, 235),
                                            ),
                                          ),
                                        );
                                      });
                                  if (questions[index]
                                      .answers!
                                      .values
                                      .toList()[i]) {
                                    score++; // Increase the score if the answer is correct
                                    print("yes");
                                  } else {
                                    print("no");
                                  }
                                  setState(() {
                                    btnPressed = true; // Button is pressed
                                    answered =
                                        true; // User has answered the question
                                  });
                                }
                              : null,
                          child: Text(
                              questions[index]
                                  .answers!
                                  .keys
                                  .toList()[i], // Display answer options
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )),
                        ),
                      ),
                    SizedBox(
                      height: 40.0,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        if (_controller!.page?.toInt() ==
                            questions.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                      score))); // Navigate to the results screen
                        } else {
                          _controller!.nextPage(
                              duration: Duration(milliseconds: 250),
                              curve: Curves
                                  .easeInExpo); // Move to the next question

                          setState(() {
                            btnPressed = false; // Reset button press status
                          });
                        }
                      },
                      shape: StadiumBorder(),
                      fillColor: Colors.blue,
                      padding: EdgeInsets.all(18.0),
                      elevation: 0.0,
                      child: Text(
                        btnText, // Display the appropriate action button text
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                );
              },
              itemCount: questions.length, // Set the total number of questions
            )),
      ),
    );
  }
}
