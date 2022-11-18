import 'package:json_annotation/json_annotation.dart';

part 'currentWeather.g.dart';
@JsonSerializable()
class CurrentWeather{
  double? temperature;
  double? windspeed;
  double? winddirection;
  int? weathercode;
  DateTime? time;
  CurrentWeather(this.weathercode,
      this.temperature,
      this.time,
      this.winddirection,
      this.windspeed);

  factory CurrentWeather.fromJson(Map<String,dynamic> json)=>_$CurrentWeatherFromJson(json);
  Map<String,dynamic>toJson()=>_$CurrentWeatherToJson(this);
}