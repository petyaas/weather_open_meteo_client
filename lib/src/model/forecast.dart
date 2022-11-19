import 'package:json_annotation/json_annotation.dart';
import 'package:weather_open_meteo_client/weather_open_meteo_client.dart';
part 'forecast.g.dart';
@JsonSerializable()
class Forecast{
  ///Geographical WGS84 coordinate of the location
  double latitude;
  ///Geographical WGS84 coordinate of the location
  double longitude;
  ///A list of weather variables which should be returned.
  List<String>? hourly=[];
  ///A list of daily weather variable aggregations which should be returned. If daily weather variables are specified, parameter timezone is required.
  List<String>? daily=[];
  ///Default false. Include current weather conditions
  bool? current_weather=false;
  ///Default celsius. If fahrenheit is set, all temperature values are converted to Fahrenheit.
  String? temperature_unit=TemperatureInit.celsus;
  ///Default kmh. Other wind speed speed units: ms, mph and kn
  String? windspeed_unit=WindSpeedUnit.kmh;
  ///Default mm. Other precipitation amount units: inch
  String? precipitation_unit=PrecipitationUnit.mm;
  String? timeformat=TimeFormat.iso8601;
  ///Default GMT. If auto is set as a time zone, the coordinates will be automatically resolved to the local time zone.
  String? timezone=TimeZone.auto;
  ///Default 0. If past_days is set, yesterday or the day before yesterday data are also returned.
  int? past_days=0;
  ///The time interval to get weather data. A day must be specified as an ISO8601 date (e.g. 2022-06-30).
  String? start_date='';
  ///The time interval to get weather data. A day must be specified as an ISO8601 date (e.g. 2022-06-30).
  String? end_date='';

  Forecast({required this.latitude,
    required this.longitude,
  this.timezone,
  this.daily,
  this.current_weather,
  this.hourly,
  this.end_date,
  this.past_days,
  this.precipitation_unit,
  this.start_date,
  this.temperature_unit,
  this.timeformat,
  this.windspeed_unit});

  Map<String,dynamic>toJson()=>_$ForecastToJson(this);

}