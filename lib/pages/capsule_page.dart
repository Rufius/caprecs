import 'package:flutter/material.dart';
import 'package:lifelink/capsule_body_widget.dart';
import 'package:lifelink/capsule_head_widget.dart';
import 'package:lifelink/get_app_bar.dart';

class CapsulePage extends StatelessWidget {
  const CapsulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: const Column(
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
