import 'package:flutter/material.dart';
import 'package:lifelink/capsule_feed_widget.dart';
import 'package:lifelink/get_app_bar.dart';

class CpasuleFeedPage extends StatelessWidget {
  const CpasuleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CapsuleFeedWidget(),
          ],
        ), // End of body
      ),
    );
  }
}
