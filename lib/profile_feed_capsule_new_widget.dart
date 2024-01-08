import 'package:flutter/material.dart';

class ProfileFeedCapsuleNewWidget extends StatelessWidget {
  final String image;
  final String text;

  const ProfileFeedCapsuleNewWidget(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          // ClipRRect to clip the image and the overlay with rounded corners.
          child: Container(
            decoration: BoxDecoration(
              // The border is defined here.
              border: Border.all(
                color: Colors.black, // Color of the border.
                width:
                    4.0, // Width of the border. Adjust the thickness as you like.
              ),
              borderRadius: BorderRadius.circular(
                  108), // Radius should be increased by the border width to maintain the shape.
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  100), // Adjust the radius for rounded corners.
              // Stack widget allows overlaying widgets on top of each other.
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // Image widget that will serve as the background.
                  Image.asset(
                    image, // Replace with your image path.
                    width: 100, // Set the width of the image.
                    height: 50, // Set the height of the image.
                    fit: BoxFit
                        .cover, // Cover the entire space of the container.
                  ), // Image widget ends here.

                  // Container widget for the dark overlay, optional.
                  IntrinsicWidth(
                    child: Container(
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // Darken the image by adding a semi-transparent overlay.
                        color: Colors.black.withOpacity(0.3),
                        shape: BoxShape
                            .rectangle, // Circular shape for the overlay.
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: const TextStyle(
                            fontSize: 10, // Adjust the font size accordingly.
                            fontWeight:
                                FontWeight.bold, // Bold font for the text.
                            color: Colors.white, // White color for the text.
                          ),
                        ),
                      ),
                    ),
                  ), // Overlay Container ends here.
                ],
              ), // Stack widget ends here.
            ),
          ), // ClipRRect ends here.
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
