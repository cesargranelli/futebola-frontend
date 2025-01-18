import 'package:flutter/cupertino.dart';
import 'package:futebola_frontend/data/repositories/gamester/gamester_repository.dart';
import 'package:futebola_frontend/domain/models/gamester.dart';
import 'package:futebola_frontend/utils/command.dart';
import 'package:futebola_frontend/utils/result.dart';
import 'package:logging/logging.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required GamesterRepository gamesterRepository,
  }) : _gamesterRepository = gamesterRepository {
    load = Command0(_load)..execute();
  }

  final GamesterRepository _gamesterRepository;
  late Command0 load;

  Gamester? _gamester;

  Gamester? get gamester => _gamester;

  final _log = Logger('HomeViewModel');

  Future<Result> _load() async {
    try {
      final gamesterResult = await _gamesterRepository.getGamester();
      switch (gamesterResult) {
        case Ok<Gamester>():
          _gamester = gamesterResult.value;
          _log.fine('Loaded gamester');
        case Error<Gamester>():
          _log.warning('Failed to load gamester', gamesterResult.error);
      }

      return gamesterResult;
    } finally {
      notifyListeners();
    }
  }
}
