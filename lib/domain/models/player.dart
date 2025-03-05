import 'package:futebola_frontend/domain/models/team.dart';

class Player {
  final String uuid;
  final String id;
  final String name;
  final String position;
  final Team team;

  Player({
    required this.uuid,
    required this.id,
    required this.name,
    required this.position,
    required this.team,
  });
}
