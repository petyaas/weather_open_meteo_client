import 'dart:convert';
import '../consts/apiConsts.dart';
import 'package:http/http.dart' as http;
import '../model/models.dart';

/// Exception thrown when locationSearch fails.
class LocationRequestFailure implements Exception {}

/// Exception thrown when the provided location is not found.
class LocationNotFoundFailure implements Exception {
  String cause;
  LocationNotFoundFailure(this.cause);
}

/// Exception thrown when getWeather fails.
class WeatherRequestFailure implements Exception {
  String cause;
  WeatherRequestFailure(this.cause);
}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundFailure implements Exception {}


class OpenMeteoApi{
  OpenMeteoApi({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<Weather> getWeatherByCoordinate({
  ///Geographical WGS84 coordinate of the location
  required double latitude,
  ///Geographical WGS84 coordinate of the location
  required double longitude,
  ///A list of weather variables which should be returned.
  List<String>? hourly,
  ///A list of daily weather variable aggregations which should be returned. If daily weather variables are specified, parameter timezone is required.
  List<String>? daily,
  ///Default false. Include current weather conditions
  bool current_weather=false,
  ///Default celsius. If fahrenheit is set, all temperature values are converted to Fahrenheit.
  String? temperature_unit,
  ///Default kmh. Other wind speed speed units: ms, mph and kn
  String? windspeed_unit,
  ///Default mm. Other precipitation amount units: inch
  String? precipitation_unit,
  String? timeformat,
  ///Default GMT. If auto is set as a time zone, the coordinates will be automatically resolved to the local time zone.
  String? timezone,
  ///Default 0. If past_days is set, yesterday or the day before yesterday data are also returned.
  int? past_days=0,
  ///The time interval to get weather data. A day must be specified as an ISO8601 date (e.g. 2022-06-30).
  String? start_date='',
  ///The time interval to get weather data. A day must be specified as an ISO8601 date (e.g. 2022-06-30).
  String? end_date='',
  }) async {
    final weatherRequest = Uri.https(Links.urlWeather, 'v1/forecast',
        {
          'latitude': latitude.toString(),
          'longitude': longitude.toString(),
          'hourly':hourly,
          'daily':daily,
          'current_weather':current_weather.toString(),
          'temperature_unit':temperature_unit ?? TemperatureInit.celsus.toString(),
          'windspeed_unit':windspeed_unit ?? WindSpeedUnit.kmh.toString(),
          'precipitation_unit':precipitation_unit ?? PrecipitationUnit.mm.toString(),
          'timeformat':timeformat ?? TimeFormat.iso8601.toString(),
          'timezone':timezone ?? TimeZone.auto.toString(),
          'past_days':past_days==null?0:past_days.toString(),
          'start_date':start_date ?? '',
          'end_date':end_date ??  '',
        }
    );

    // print(weatherRequest.toString());
    final weatherResponse = await _httpClient.get(weatherRequest);
    // print(weatherResponse.body);

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure(weatherResponse.body);
    }
    final bodyJson = jsonDecode(weatherResponse.body) as Map<String, dynamic>;
    return Weather.fromJson(bodyJson);


}

  Future<Weather> getWeatherByCityName(String query) async {
    final locationRequest = Uri.https(
      Links.urlByName,
      '/v1/search',
      {'name': query, 'count': '1'},
    );

    final locationResponse = await _httpClient.get(locationRequest);

    if (locationResponse.statusCode != 200) {
      throw LocationRequestFailure();
    }

    final locationJson = jsonDecode(locationResponse.body) as Map;

    if (!locationJson.containsKey('results')) throw LocationNotFoundFailure('Location not found!');

    final results = locationJson['results'] as List;

    if (results.isEmpty) throw LocationNotFoundFailure('Location not found!');
    List<LocationList> _list = List<LocationList>.from(results.map((model)=> LocationList.fromJson(model)));


    return  getWeatherByCoordinate(latitude: _list[0].latitude, longitude: _list[0].longitude,current_weather: true);

  }
  Future<List<LocationList>> locationSearch(String query) async {
    final locationRequest = Uri.https(
      Links.urlByName,
      '/v1/search',
      {'name': query, 'count': '10'},
    );

    final locationResponse = await _httpClient.get(locationRequest);

    if (locationResponse.statusCode != 200) {
      throw LocationRequestFailure();
    }

    final locationJson = jsonDecode(locationResponse.body) as Map;

    if (!locationJson.containsKey('results')) throw LocationNotFoundFailure('Location not found!');

    final results = locationJson['results'] as List;

    if (results.isEmpty) throw LocationNotFoundFailure('Location not found!');
    List<LocationList> _list = List<LocationList>.from(results.map((model)=> LocationList.fromJson(model)));
    return  _list;

  }

}
