import 'package:weather_open_meteo_client/weather_open_meteo_client.dart';
import 'package:weather_open_meteo_client/src/model/models.dart';
import 'package:test/test.dart';


void main() {
  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          LocationList.fromJson(
            <String, dynamic>{
              'id': 4887398,
              'name': 'Chicago',
              'latitude': 41.85003,
              'longitude': -87.65005,
            },
          ),
          isA<LocationList>()
              .having((w) => w.id, 'id', 4887398)
              .having((w) => w.name, 'name', 'Chicago')
              .having((w) => w.latitude, 'latitude', 41.85003)
              .having((w) => w.longitude, 'longitude', -87.65005),
        );
      });
    });
  });
}
