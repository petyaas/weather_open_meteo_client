// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      hourly: json['hourly'] == null
          ? null
          : HourlyWeather.fromJson(json['hourly'] as Map<String, dynamic>),
      current_weather: json['current_weather'] == null
          ? null
          : CurrentWeather.fromJson(
              json['current_weather'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : DailyWeather.fromJson(json['daily'] as Map<String, dynamic>),
      daily_units: json['daily_units'] == null
          ? null
          : DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      elevation: (json['elevation'] as num?)?.toDouble(),
      generationtime_ms: (json['generationtime_ms'] as num?)?.toDouble(),
      hourly_units: json['hourly_units'] == null
          ? null
          : HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
      timezone_abbreviation: json['timezone_abbreviation'] as String?,
      utc_offset_seconds: json['utc_offset_seconds'] as int?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtime_ms,
      'utc_offset_seconds': instance.utc_offset_seconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezone_abbreviation,
      'elevation': instance.elevation,
      'current_weather': instance.current_weather,
      'hourly_units': instance.hourly_units,
      'hourly': instance.hourly,
      'daily_units': instance.daily_units,
      'daily': instance.daily,
    };
