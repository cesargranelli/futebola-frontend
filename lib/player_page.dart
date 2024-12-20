import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state_player.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPage();
}

class _PlayerPage extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player List'),
      ),
      body: const CardPlayer(),
    );
  }
}

class CardPlayer extends StatefulWidget {
  const CardPlayer({super.key});

  @override
  State<CardPlayer> createState() => _CardPlayerState();
}

class _CardPlayerState extends State<CardPlayer> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationStatePlayer>(
      builder: (context, appStatePlayer, _) => ListView.builder(
        itemCount: appStatePlayer.players.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      appStatePlayer.players.elementAt(index).team.emblem,
                    ),
                    title: Text(appStatePlayer.players.elementAt(index).name),
                    subtitle: Text(appStatePlayer.players.elementAt(index).position),
                    trailing: TextButton(
                      child: const Text('ADD'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ),
                  Slider(
                    value: _currentSliderValue,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
