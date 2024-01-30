import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.height = kToolbarHeight});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: const Icon(Icons.arrow_back),
                      onTap: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(
                          2.0), // this will be the border width
                      decoration: const BoxDecoration(
                        color: Colors.black, // this will be the border color
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 20.0,
                        foregroundImage: AssetImage("assets/profile_small.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text("@agunelkaa"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo3.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
