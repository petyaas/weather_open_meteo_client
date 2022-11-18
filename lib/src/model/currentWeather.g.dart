// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currentWeather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      json['weathercode'] as int?,
      (json['temperature'] as num?)?.toDouble(),
      json['time'] == null ? null : DateTime.parse(json['time'] as String),
      (json['winddirection'] as num?)?.toDouble(),
      (json['windspeed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'windspeed': instance.windspeed,
      'winddirection': instance.winddirection,
      'weathercode': instance.weathercode,
      'time': instance.time?.toIso8601String(),
    };
