import 'package:flutter/material.dart';
import 'package:space/screens/contact_screen.dart';
import 'package:space/screens/landing_page.dart';
import 'package:space/screens/main_menu.dart';
import 'package:space/screens/news_screen.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StellarIndia',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        Landing.routeName: (context) => const Landing(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        ContactScreen.routeName: (context) => const ContactScreen(),
        NewsScreen.routeName: (context) => const NewsScreen(),
        MainMenu.routeName: (context) => const MainMenu(),
      },
    );
  }
}
