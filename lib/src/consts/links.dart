class Links{
  static String _urlWeatherByCoordinate="api.open-meteo.com";
  static String _urlWeatherByCityName="geocoding-api.open-meteo.com";
  static get urlWeather=>_urlWeatherByCoordinate;
  static get urlByName=>_urlWeatherByCityName;
}
