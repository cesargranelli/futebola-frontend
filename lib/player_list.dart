import 'package:flutter/material.dart';

import 'src/widgets.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({
    super.key,
    required this.players,
  });

  final List<Object> players;

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        for (var player in widget.players) Paragraph(player.toString()),
        const SizedBox(height: 8),
      ],
    );
  }
}
