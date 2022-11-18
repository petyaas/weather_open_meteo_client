// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyWeather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) => DailyWeather(
      json['time'] as List<dynamic>?,
      json['weathercode'] as List<dynamic>?,
      json['et0_fao_evapotranspiration'] as List<dynamic>?,
      json['windgusts_10m_max'] as List<dynamic>?,
      json['winddirection_10m_dominant'] as List<dynamic>?,
      json['temperature_2m_min'] as List<dynamic>?,
      json['temperature_2m_max'] as List<dynamic>?,
      json['sunset'] as List<dynamic>?,
      json['sunrise'] as List<dynamic>?,
      json['snowfall_sum'] as List<dynamic>?,
      json['showers_sum'] as List<dynamic>?,
      json['shortwave_radiation_sum'] as List<dynamic>?,
      json['rain_sum'] as List<dynamic>?,
      json['precipitation_sum'] as List<dynamic>?,
      json['precipitation_hours'] as List<dynamic>?,
      json['apparent_temperature_min'] as List<dynamic>?,
      json['apparent_temperature_max'] as List<dynamic>?,
      json['windspeed_10m_max'] as List<dynamic>?,
    );

Map<String, dynamic> _$DailyWeatherToJson(DailyWeather instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature_2m_max,
      'temperature_2m_min': instance.temperature_2m_min,
      'apparent_temperature_max': instance.apparent_temperature_max,
      'apparent_temperature_min': instance.apparent_temperature_min,
      'precipitation_sum': instance.precipitation_sum,
      'rain_sum': instance.rain_sum,
      'showers_sum': instance.showers_sum,
      'snowfall_sum': instance.snowfall_sum,
      'precipitation_hours': instance.precipitation_hours,
      'weathercode': instance.weathercode,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'windspeed_10m_max': instance.windspeed_10m_max,
      'windgusts_10m_max': instance.windgusts_10m_max,
      'winddirection_10m_dominant': instance.winddirection_10m_dominant,
      'shortwave_radiation_sum': instance.shortwave_radiation_sum,
      'et0_fao_evapotranspiration': instance.et0_fao_evapotranspiration,
    };
