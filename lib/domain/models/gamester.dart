import 'package:freezed_annotation/freezed_annotation.dart';

part 'gamester.freezed.dart';

part 'gamester.g.dart';

@freezed
class Gamester with _$Gamester {
  const factory Gamester({
    int? id,
    required String uuid,
    required String name,
    required String heartTeam,
  }) = _Gamester;

  factory Gamester.fromJson(Map<String, Object?> json) => _$GamesterFromJson(json);
}
