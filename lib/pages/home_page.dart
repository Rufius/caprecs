import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Standard feed"),
              onPressed: () {
                Navigator.pushNamed(context, '/standard-feed');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Capsule feed"),
              onPressed: () {
                Navigator.pushNamed(context, '/capsule-feed');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Capsule"),
              onPressed: () {
                Navigator.pushNamed(context, '/capsule');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Profile"),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Post"),
              onPressed: () {
                Navigator.pushNamed(context, '/post');
              },
            ),
          ],
        ),
      ), // End of body
    );
  }
}
