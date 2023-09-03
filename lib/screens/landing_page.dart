import 'package:flutter/material.dart';
import 'package:space/models/article_model.dart';
import 'package:space/screens/home_screen.dart';

//This screen has the UI for the Landing/Onboarding Page
//User can click on the Button and enter the App

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        //The following is the Background image for the landing page
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./assets/images/onbaording.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //The following consists oif the text used in the landing page
                  Text(
                    'Explore the',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                  Text(
                    'Universe',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color.fromARGB(255, 107, 222, 179),
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      'Journey Through the Cosmos through the StellarIndia app',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.w200,
                              fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //The following Page Consists of the button to enter the app
                  Row(
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
                          'Get Started',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                    fontSize: 30,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
