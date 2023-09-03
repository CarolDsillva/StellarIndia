import 'package:flutter/material.dart';
import 'package:space/models/article_model.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/main_menu.dart';
import 'package:space/ui/shared/color.dart';

//The following screen contains the UI for the Results Screen displayed after the Quiz Screen
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amber[200],
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ));
            },
            // shape: StadiumBorder(),
            //color: AppColor.secondaryColor,
            // padding: EdgeInsets.all(18.0),
            child: Text(
              "Repeat the quizz",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HomeScreen.routeName,
                    arguments: article,
                  );
                },
                child: Text(
                  'Click to go Home',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
