import 'package:flutter/material.dart';

class CapsuleBodyWidget extends StatelessWidget {
  const CapsuleBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 500,
      child: _buildGrid(),
    );
  }
}

Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 300,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(10));

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
