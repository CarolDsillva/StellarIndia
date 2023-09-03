import 'package:flutter/material.dart';
import 'package:space/screens/contact_screen.dart';
import 'package:space/screens/landing_page.dart';
import 'package:space/screens/main_menu.dart';
import 'package:space/screens/news_screen.dart';

import 'screens/screens.dart';

// Import other screen definitions if needed.
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
        primarySwatch: Colors.grey, // Set the primary color theme.
      ),
      initialRoute: '/', // Define the initial route for the app.
      routes: {
        Landing.routeName: (context) => const Landing(), // Landing screen.
        HomeScreen.routeName: (context) =>
            const HomeScreen(), // Landing screen.
        DiscoverScreen.routeName: (context) =>
            const DiscoverScreen(), // Discover screen.
        ArticleScreen.routeName: (context) =>
            const ArticleScreen(), // Article screen.
        ContactScreen.routeName: (context) =>
            const ContactScreen(), // Contact screen.
        NewsScreen.routeName: (context) => const NewsScreen(), // News screen.
        MainMenu.routeName: (context) => const MainMenu(), // Main menu screen.
      },
    );
  }
}
