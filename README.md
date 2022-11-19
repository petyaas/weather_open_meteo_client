# weather_open_meteo_client
This package uses the [OpenMeteo API](https://open-meteo.com/) to get the current weather status as well as weather forecasts.

The weather can currently be fetched by providing a geolocation or a city name.

## Install (Flutter)
Add ```weather_open_meteo_client``` as a dependency in  `pubspec.yaml`.
For help on adding as a dependency, view the [pubspec documenation](https://flutter.io/using-packages/).

## Usage
By CityName:
```dart
import 'package:weather_open_meteo_client/weather_open_meteo_client.dart';

...
async{
OpenMeteoApi _weather=OpenMeteoApi();
Weather tempWether= await _weather.getWeatherByCityName('London');
print(tempWether.current_weather!.temperature);
}
```

By coordinate:
```dart
import 'package:weather_open_meteo_client/weather_open_meteo_client.dart';

...
async{
OpenMeteoApi _weather=OpenMeteoApi();
Weather tempWether= await _weather.getWeatherByCoordinate(latitude: 51.5072, longitude: -0.1275,current_weather: true);
print(tempWether.current_weather!.temperature);
}
```

### Current Weather
For specific documentation on the current weather API, see the [API Documentation](https://open-meteo.com/en/docs#api_form).
