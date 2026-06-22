import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String title;

  const PlaylistCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8),
      color: Colors.green,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}