// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamesterImpl _$$GamesterImplFromJson(Map<String, dynamic> json) =>
    _$GamesterImpl(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      heartTeam: json['heartTeam'] as String,
    );

Map<String, dynamic> _$$GamesterImplToJson(_$GamesterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'heartTeam': instance.heartTeam,
    };
