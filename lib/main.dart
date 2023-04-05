import 'package:flutter/material.dart';
import 'package:life_quotes/screens/about_page.dart';
import 'package:life_quotes/screens/app_rating_page.dart';
import 'package:life_quotes/screens/category_and_authors_page.dart';
import 'package:life_quotes/screens/details_page.dart';
import 'package:life_quotes/screens/favourite_page.dart';
import 'package:life_quotes/screens/home_page.dart';
import 'package:life_quotes/screens/quotes_page.dart';
import 'package:life_quotes/screens/splash_page.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        'HomePage': (context) => const HomePage(),
        'AboutPage': (context) => const AboutPage(),
        'QuotesPage': (context) => const QuotesPage(),
        'TopicAndAuthorPage': (context) => const TopicAndAuthorPage(),
        'AppRatingPage': (context) =>  const AppRatingPage(),
        'FavouritePage': (context) =>  const FavouritePage(),
        'DetailsPage': (context) =>  const DetailsPage(),
      },
    ),
  );
}
