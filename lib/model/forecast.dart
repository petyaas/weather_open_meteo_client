import 'package:weather_open_meteo_client/model/consts.dart';

class Forecast{
  double latitude;
  double longitude;
  ///A list of weather variables which should be returned.
  List<String> hourly=[];
  List<String> daily=[];
  bool current_weather=false;
  String temperature_unit=TemperatureInit.celsus;
  String windspeed_unit=WindSpeedUnit.kmh;
  String precipitation_unit=PrecipitationUnit.mm;
  String timeformat=TimeFormat.iso8601;
  String timezone=TimeZone.auto;
  int past_days=0;
  String start_date='';
  String end_date='';

  Forecast({required this.latitude,required this.longitude});
}