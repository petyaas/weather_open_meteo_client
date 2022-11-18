import 'package:json_annotation/json_annotation.dart';

part 'dailyWeather.g.dart';
@JsonSerializable()
class DailyWeather {
  List<dynamic>? time,
      temperature_2m_max,
      temperature_2m_min,
      apparent_temperature_max,
      apparent_temperature_min,
      precipitation_sum,
      rain_sum,
      showers_sum,
      snowfall_sum,
      precipitation_hours,
      weathercode,
      sunrise,
      sunset,
      windspeed_10m_max,
      windgusts_10m_max,
      winddirection_10m_dominant,
      shortwave_radiation_sum,
      et0_fao_evapotranspiration;

  DailyWeather(this.time,
      this.weathercode,
      this.et0_fao_evapotranspiration,
      this.windgusts_10m_max,
      this.winddirection_10m_dominant,
      this.temperature_2m_min,
      this.temperature_2m_max,
      this.sunset,
      this.sunrise,
      this.snowfall_sum,
      this.showers_sum,
      this.shortwave_radiation_sum,
      this.rain_sum,
      this.precipitation_sum,
      this.precipitation_hours,
      this.apparent_temperature_min,
      this.apparent_temperature_max,
      this.windspeed_10m_max);

  factory DailyWeather.fromJson(Map<String,dynamic> json)=>_$DailyWeatherFromJson(json);
  Map<String,dynamic>toJson()=>_$DailyWeatherToJson(this);

}