import 'package:flutter/material.dart';
import 'package:lifelink/capsule_body_widget.dart';
import 'package:lifelink/get_app_bar.dart';
import 'package:lifelink/profile_feed_widget.dart';
import 'package:lifelink/profile_head_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 700,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: const DecorationImage(
                        image: AssetImage(
                            'profile_back.png'), // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: ProfileHeadWidget()),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ProfileFeedWidget(),
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: CapsuleBodyWidget(),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 10.0,
                left: 0,
                right: 0,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                  onPressed: () {
                    _showCustomMenu(context);
                  },
                  child: const Icon(Icons.add),
                ),
              ),
            ]),
          ],
        ), // End of body
      ),
    );
  }

  void _showCustomMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0)), // Apply rounded corners to the top
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _buildMenuItem(context, Icons.photo, 'POST (PHOTO/VIDEO)'),
                Divider(), // Optional: Adds a divider line between items
                _buildMenuItem(context, Icons.mic, 'VOICE POST'),
                Divider(), // Optional: Adds a divider line between items
                _buildMenuItem(context, Icons.video_call, 'LIVESTREAM'),
                Divider(), // Optional: Adds a divider line between items
                _buildMenuItem(context, Icons.create, 'CREATE CAPSULE'),
                // ... add more menu items
              ],
            ),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        // This line rounds the corners of the modal bottom sheet
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {
        // Handle the menu item tap
        Navigator.of(context)
            .pop(); // Close the bottom sheet when an item is tapped
      },
    );
  }
}
