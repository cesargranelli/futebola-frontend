import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state_player.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player List'),
      ),
      body: Consumer<ApplicationStatePlayer>(
        builder: (context, appStatePlayer, _) => ListView.builder(
          itemCount: appStatePlayer.players.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const FlutterLogo(),
              title: Text(appStatePlayer.players.elementAt(index).name),
              subtitle: Text(appStatePlayer.players.elementAt(index).position),
              trailing: Image.network(
                appStatePlayer.players.elementAt(index).team.emblem,
              ),
            );
          },
        ),
      ),
    );
  }
}
