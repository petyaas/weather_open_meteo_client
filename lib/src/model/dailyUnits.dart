import 'package:json_annotation/json_annotation.dart';

part 'dailyUnits.g.dart';
@JsonSerializable()
class DailyUnits{
  String? temperature_2m_max,
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
      sunrwindspeed_10m_maxise,
      windgusts_10m_max,
      winddirection_10m_dominant,
      shortwave_radiation_sum,
      et0_fao_evapotranspiration;
  DailyUnits(this.apparent_temperature_max,
      this.apparent_temperature_min,
      this.et0_fao_evapotranspiration,
      this.precipitation_hours,
      this.precipitation_sum,
      this.rain_sum,
      this.shortwave_radiation_sum,
      this.showers_sum,
      this.snowfall_sum,
      this.sunrise,
      this.sunrwindspeed_10m_maxise,
      this.sunset,
      this.temperature_2m_max,
      this.temperature_2m_min,
      this.weathercode,
      this.winddirection_10m_dominant,
      this.windgusts_10m_max);

  factory DailyUnits.fromJson(Map<String,dynamic> json)=>_$DailyUnitsFromJson(json);
  Map<String,dynamic> toJson()=>_$DailyUnitsToJson(this);

}