// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamester.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gamester _$GamesterFromJson(Map<String, dynamic> json) {
  return _Gamester.fromJson(json);
}

/// @nodoc
mixin _$Gamester {
  int? get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get heartTeam => throw _privateConstructorUsedError;

  /// Serializes this Gamester to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gamester
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamesterCopyWith<Gamester> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesterCopyWith<$Res> {
  factory $GamesterCopyWith(Gamester value, $Res Function(Gamester) then) =
      _$GamesterCopyWithImpl<$Res, Gamester>;
  @useResult
  $Res call({int? id, String uuid, String name, String heartTeam});
}

/// @nodoc
class _$GamesterCopyWithImpl<$Res, $Val extends Gamester>
    implements $GamesterCopyWith<$Res> {
  _$GamesterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gamester
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = null,
    Object? name = null,
    Object? heartTeam = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      heartTeam: null == heartTeam
          ? _value.heartTeam
          : heartTeam // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesterImplCopyWith<$Res>
    implements $GamesterCopyWith<$Res> {
  factory _$$GamesterImplCopyWith(
          _$GamesterImpl value, $Res Function(_$GamesterImpl) then) =
      __$$GamesterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String uuid, String name, String heartTeam});
}

/// @nodoc
class __$$GamesterImplCopyWithImpl<$Res>
    extends _$GamesterCopyWithImpl<$Res, _$GamesterImpl>
    implements _$$GamesterImplCopyWith<$Res> {
  __$$GamesterImplCopyWithImpl(
      _$GamesterImpl _value, $Res Function(_$GamesterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gamester
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = null,
    Object? name = null,
    Object? heartTeam = null,
  }) {
    return _then(_$GamesterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      heartTeam: null == heartTeam
          ? _value.heartTeam
          : heartTeam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesterImpl implements _Gamester {
  const _$GamesterImpl(
      {this.id,
      required this.uuid,
      required this.name,
      required this.heartTeam});

  factory _$GamesterImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesterImplFromJson(json);

  @override
  final int? id;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String heartTeam;

  @override
  String toString() {
    return 'Gamester(id: $id, uuid: $uuid, name: $name, heartTeam: $heartTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.heartTeam, heartTeam) ||
                other.heartTeam == heartTeam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uuid, name, heartTeam);

  /// Create a copy of Gamester
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesterImplCopyWith<_$GamesterImpl> get copyWith =>
      __$$GamesterImplCopyWithImpl<_$GamesterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesterImplToJson(
      this,
    );
  }
}

abstract class _Gamester implements Gamester {
  const factory _Gamester(
      {final int? id,
      required final String uuid,
      required final String name,
      required final String heartTeam}) = _$GamesterImpl;

  factory _Gamester.fromJson(Map<String, dynamic> json) =
      _$GamesterImpl.fromJson;

  @override
  int? get id;
  @override
  String get uuid;
  @override
  String get name;
  @override
  String get heartTeam;

  /// Create a copy of Gamester
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamesterImplCopyWith<_$GamesterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
