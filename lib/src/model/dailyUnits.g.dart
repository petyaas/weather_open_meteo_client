// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyUnits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => DailyUnits(
      json['apparent_temperature_max'] as String?,
      json['apparent_temperature_min'] as String?,
      json['et0_fao_evapotranspiration'] as String?,
      json['precipitation_hours'] as String?,
      json['precipitation_sum'] as String?,
      json['rain_sum'] as String?,
      json['shortwave_radiation_sum'] as String?,
      json['showers_sum'] as String?,
      json['snowfall_sum'] as String?,
      json['sunrise'] as String?,
      json['sunrwindspeed_10m_maxise'] as String?,
      json['sunset'] as String?,
      json['temperature_2m_max'] as String?,
      json['temperature_2m_min'] as String?,
      json['weathercode'] as String?,
      json['winddirection_10m_dominant'] as String?,
      json['windgusts_10m_max'] as String?,
    );

Map<String, dynamic> _$DailyUnitsToJson(DailyUnits instance) =>
    <String, dynamic>{
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
      'sunrwindspeed_10m_maxise': instance.sunrwindspeed_10m_maxise,
      'windgusts_10m_max': instance.windgusts_10m_max,
      'winddirection_10m_dominant': instance.winddirection_10m_dominant,
      'shortwave_radiation_sum': instance.shortwave_radiation_sum,
      'et0_fao_evapotranspiration': instance.et0_fao_evapotranspiration,
    };
