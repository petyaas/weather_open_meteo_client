import 'package:weather_open_meteo_client/model/forecast.dart';

import 'model/consts.dart';

main(){
  Forecast _forecast;
  _forecast=Forecast(latitude: 32.23, longitude: 34.34);
  _forecast.hourly.add('as');
  // print(PastDays.past_days);
}