import 'package:flutter/material.dart';

class ProfileHeadWidget extends StatelessWidget {
  // Constructor to accept parameters, if any
  const ProfileHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 500, // Width of the outer container
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(60), // Adjust to get the capsule shape
            border: Border.all(
              width: 1, // Width of the outer border
            ),
            color: Color.fromARGB(155, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                          child: Container(
                            padding: const EdgeInsets.all(
                                5.0), // this will be the border width
                            decoration: const BoxDecoration(
                              color:
                                  Colors.black, // this will be the border color
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 40.0,
                              foregroundImage: AssetImage("assets/profile.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 8,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 8, 20, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "@agunelkaa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "GUNEL SADIGOVA",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "“Reccaps” Founder, Mentor and BusinessWoman.",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "Happy Wife, Daugther and Mother.",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "1 mln. - followers",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "100 - following",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
    );
  }
}
