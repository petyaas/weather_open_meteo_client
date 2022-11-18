// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String?,
      daily:
          (json['daily'] as List<dynamic>?)?.map((e) => e as String).toList(),
      current_weather: json['current_weather'] as bool?,
      hourly:
          (json['hourly'] as List<dynamic>?)?.map((e) => e as String).toList(),
      end_date: json['end_date'] as String?,
      past_days: json['past_days'] as int?,
      precipitation_unit: json['precipitation_unit'] as String?,
      start_date: json['start_date'] as String?,
      temperature_unit: json['temperature_unit'] as String?,
      timeformat: json['timeformat'] as String?,
      windspeed_unit: json['windspeed_unit'] as String?,
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'hourly': instance.hourly,
      'daily': instance.daily,
      'current_weather': instance.current_weather,
      'temperature_unit': instance.temperature_unit,
      'windspeed_unit': instance.windspeed_unit,
      'precipitation_unit': instance.precipitation_unit,
      'timeformat': instance.timeformat,
      'timezone': instance.timezone,
      'past_days': instance.past_days,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };
