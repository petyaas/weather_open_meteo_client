// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationList _$LocationListFromJson(Map<String, dynamic> json) => LocationList(
      id: json['id'] as int,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationListToJson(LocationList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
