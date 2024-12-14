import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:flutter/material.dart';
import 'package:futebola_frontend/player_list.dart';
import 'package:futebola_frontend/src/widgets.dart';
import 'package:provider/provider.dart';

import 'app_state_player.dart';
import 'src/authentication.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player List'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 8),
          Consumer<ApplicationStatePlayer>(
            builder: (context, appStatePlayer, _) => AuthFunc(
                loggedIn: appStatePlayer.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),
          // to here
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          Consumer<ApplicationStatePlayer>(
            builder: (context, appStatePlayer, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appStatePlayer.loggedIn) ...[
                  const Header('Players'),
                  PlayerList(
                    players: appStatePlayer.players,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
