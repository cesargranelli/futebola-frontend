import 'package:futebola_frontend/domain/models/gamester.dart';
import 'package:futebola_frontend/utils/result.dart';

abstract class GamesterRepository {
  Future<Result<Gamester>> getGamester();
}
