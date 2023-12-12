import 'package:flutter/material.dart';

class CapsuleHeadWidget extends StatelessWidget {
  final String avatarImage;
  final String name;
  final String description;
  const CapsuleHeadWidget({
    super.key,
    required this.avatarImage,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        child: CircleAvatar(
                          radius: 40.0,
                          foregroundImage: AssetImage(avatarImage),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(description),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
