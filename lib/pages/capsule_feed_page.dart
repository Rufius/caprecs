import 'package:flutter/material.dart';
import 'package:lifelink/app_bar_widget.dart';
import 'package:lifelink/capsule_feed_widget.dart';

class CpasuleFeedPage extends StatelessWidget {
  const CpasuleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(height: 102),
      body: Center(
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
