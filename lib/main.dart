import 'package:flutter/material.dart';
import 'package:lifelink/pages/capsule_feed_page.dart';
import 'package:lifelink/pages/capsule_page.dart';
import 'package:lifelink/pages/home_page.dart';
import 'package:lifelink/pages/post_page.dart';
import 'package:lifelink/pages/profile_page.dart';
import 'package:lifelink/pages/standard_feed_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/standard-feed': (_) => const StandardFeedPage(),
        '/capsule-feed': (_) => const CpasuleFeedPage(),
        '/capsule': (_) => const CapsulePage(),
        '/profile': (_) => const ProfilePage(),
        '/post': (_) => const PostPage(),
      },
    );
  }
}
