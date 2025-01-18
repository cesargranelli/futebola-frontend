import 'package:futebola_frontend/data/repositories/gamester/gamester_repository.dart';
import 'package:futebola_frontend/domain/models/gamester.dart';
import 'package:futebola_frontend/utils/result.dart';

class GamesterRepositoryRemote implements GamesterRepository {
  @override
  Future<Result<Gamester>> getGamester() {
    throw UnimplementedError();
  }
}
