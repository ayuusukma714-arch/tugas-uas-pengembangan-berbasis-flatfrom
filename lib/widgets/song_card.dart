import 'package:flutter/material.dart';
import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  final Song song;

  const SongCard({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.music_note),
        ),
        title: Text(song.title, style: const TextStyle(color: Colors.white)),
        subtitle: Text(
          song.artist,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(Icons.play_arrow, color: Colors.green),
      ),
    );
  }
}
