import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'weather.g.dart';
@JsonSerializable()
class Weather{
  double? latitude;
  double? longitude;
  double? generationtime_ms;
  int? utc_offset_seconds;
  String? timezone;
  String? timezone_abbreviation;
  double? elevation;
  CurrentWeather? current_weather;
  HourlyUnits? hourly_units;
  HourlyWeather? hourly;
  DailyUnits? daily_units;
  DailyWeather? daily;

  Weather({required this.latitude,
    required this.longitude,
    this.hourly,
    this.current_weather,
    this.daily,
    this.daily_units,
    this.elevation,
    this.generationtime_ms,
    this.hourly_units,
    this.timezone,
    this.timezone_abbreviation,
    this.utc_offset_seconds,
  });

  factory Weather.fromJson(Map<String,dynamic> json)=>_$WeatherFromJson(json);
  Map<String,dynamic>toJson()=>_$WeatherToJson(this);

}