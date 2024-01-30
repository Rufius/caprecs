import 'package:flutter/material.dart';
import 'package:lifelink/app_bar_widget.dart';
import 'package:lifelink/capsule_body_widget.dart';
import 'package:lifelink/capsule_head_widget.dart';

class CapsulePage extends StatelessWidget {
  const CapsulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(height: 102),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CapsuleHeadWidget(
            avatarImage: 'assets/tile0.png',
            name: 'My Gallery',
            description: 'Personal gallery',
          ),
          CapsuleBodyWidget(),
        ],
      ), // End of body
    );
  }
}
