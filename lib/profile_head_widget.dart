import 'package:flutter/material.dart';

class ProfileHeadWidget extends StatelessWidget {
  // Constructor to accept parameters, if any
  const ProfileHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text('@sadigova'),
            const Text('Sadigova Gunel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const CircleAvatar(
              foregroundImage: AssetImage('assets/profile.png'),
              radius: 50,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Handle subscribe action here
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ), // Example icon, you can change this to any other icon
              label: const Text('Subscribe'),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('1 mln. followers'),
                SizedBox(width: 20),
                Text('100 following'),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.black,
              height: 3.0,
              width:
                  double.infinity, // Make the line take full horizontal width
            ),
          ],
        ),
      ),
    );
  }
}
