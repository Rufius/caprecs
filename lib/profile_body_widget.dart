import 'package:flutter/material.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.4,
      height: MediaQuery.of(context).size.height / 1.6,
      child: _buildGrid(),
    );
  }
}

Widget _buildGrid() =>
    GridView.extent(maxCrossAxisExtent: 150, children: _buildGridTileList(10));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Column> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Column(
        children: [
          Expanded(child: Image.asset('assets/tile$i.png')),
          const SizedBox(height: 5),
          Text('#hashtag$i'),
        ],
      ),
    );
