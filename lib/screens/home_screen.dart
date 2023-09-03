import 'package:flutter/material.dart';
import 'package:space/models/article_model.dart';
import 'package:space/models/news_model.dart';
import 'package:space/screens/news_screen.dart';
import 'package:space/screens/screens.dart';
import 'package:space/widgets/custom_tag.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/image_container.dart';

// This screen represents the UI for the Home Screen.

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home'; // Define a named route for this screen.
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {}, // Handle the leading button's functionality here.
          icon: const Icon(
            Icons.bedtime_outlined,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        // The order of the children lies here and is rendered in the same sequence.
        _NewsOfTheDay(article: article),
        _BreakingNews(articles: Article.articles),
        _Facts(articles: Article.articles),
        _LatestNews(news: News.news),
        _About(articles: Article.articles),
      ]),
    );
  }
}

// ----------------------------------------------------------------
// The following Contains the Space Missions and the carousel on the app.
class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Space Missions',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ArticleScreen.routeName,
                        arguments: articles[index],
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                          width: MediaQuery.of(context).size.width * 0.5,
                          imageUrl: articles[index].imageUrl,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          articles[index].category,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.grey[500], height: 1.5),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// The following contains the facts of the app
//This class has potential for being improved and hence is in a seperate class
class _Facts extends StatelessWidget {
  const _Facts({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Did you Know?',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Dr Vikram Sarabhai founded ISRO in 1969. He is also considered the father of the Indian space program. On his name, the lander for Chnadrayaan 2 was called 'Vikram lander'",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
        ],
      ),
    );
  }
}

// This screen has the UI for the Latest News
// The information on this page is available in the news_modal.dart file in the models directory

class _LatestNews extends StatelessWidget {
  const _LatestNews({
    Key? key,
    required this.news,
  }) : super(key: key);

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        NewsScreen.routeName,
                        arguments: news[index],
                      );
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: news[index].imageUrl,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            news[index].title,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            news[index].category,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white, height: 1.5),
                          ),
                        ]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// This screen has the UI for the hero Section
// The following consists of a hero image along with an option to read more
// The information on this page is available in the articles_modal.dart file in the models directory
class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: article.imageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                'Aditya L1 Launched Successfully',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, height: 1.25, color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ArticleScreen.routeName,
                      arguments: article,
                    );
                  },
                  child: Text(
                    'Read More',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//This screen has the UI for the About section
//The follwing section is built so that more information can be passed
class _About extends StatelessWidget {
  _About({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  //URL to the Augmented Reality Effect
  final Uri url = Uri.parse(
      "https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=ecc36fc7f3b546a491341569ba0c33b6&metadata=01");
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15), backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About the Indian Space Adventures',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            child: Image.asset(
              './assets/images/adventures.png',
              fit: BoxFit.cover,
            ),
          ),

          //About section Overview
          Text(
            "India's space program has made significant progress in recent years, with successful missions to the Moon and Mars. The Indian Space Research Organization (ISRO) is planning to send a crewed mission to space in the near future. These missions have helped India to become a major player in the global space community.",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
          Container(
            child: Image.asset(
              './assets/images/hero_1.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "India achieved a milestone by being the only country to have a successfully landing Chandrayaan-3 on the South Pole of the moon.",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
          SizedBox(
            height: 20,
          ),

          //The follwing contains the Evelated button with the Augmented Reatity Effect made for this app
          Container(
            height: 50,
            width: 2100,
            child: ElevatedButton(
              style: style,
              child:
                  Text("View 360 degree view of Space from an Indian Mission"),
              onPressed: () {
                launchUrl(url);
              },
            ),
          ),
        ],
      ),
    );
  }
}
