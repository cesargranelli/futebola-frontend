import 'package:futebola_frontend/team.dart';

class Player {
  Player(
      {required this.uuid,
      required this.id,
      required this.name,
      required this.position,
      required this.team});

  final String uuid;
  final String id;
  final String name;
  final String position;
  final Team team;
}
