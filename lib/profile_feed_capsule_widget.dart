import 'package:flutter/material.dart';

class ProfileFeedCapsuleWidget extends StatelessWidget {
  const ProfileFeedCapsuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 400, // Width of the outer container
          height: 100,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(60), // Adjust to get the capsule shape
            border: Border.all(
              width: 1, // Width of the outer border
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 200, // Width of the inner container
              height: 50, // Height of the inner container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    60), // Adjust to get the capsule shape
                border: Border.all(
                  width: 1, // Width of the inner border
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(
                          5.0), // this will be the border width
                      decoration: const BoxDecoration(
                        color: Colors.black, // this will be the border color
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 40.0,
                      ),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NAME OF THE CAPSULE',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Description text of the capsule'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Icon(
                      Icons.bookmark,
                      size: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
