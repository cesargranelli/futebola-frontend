import 'dart:math';

import 'package:futebola_frontend/domain/models/player.dart';
import 'package:futebola_frontend/domain/models/team.dart';

Player getPlayers() {
  List<Player> listPlayers = [
    Player(
      uuid: Random().toString(),
      id: Random().toString(),
      name: "Rodrigo Caetano",
      position: "Atacante",
      team: Team(
        id: Random().toString(),
        name: "Vasco",
        acronym: "VAS",
        emblem: "",
      ),
    ),
    Player(
      uuid: Random().toString(),
      id: Random().toString(),
      name: "Paulo Autuori",
      position: "Zagueiro",
      team: Team(
        id: Random().toString(),
        name: "Vasco",
        acronym: "VAS",
        emblem: "",
      ),
    ),
  ];

  return getPlayers();
}
