import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherAppClient {
  static const baseUrl = 'http://api.openweathermap.org';
  final String _apiKey = '72677c30c42764d4e07babea36c1363a';

  Future<Map<String, double>> getLatLong(String city) async {
    final latLongUrl =
        Uri.parse('$baseUrl/geo/1.0/direct?q=${city}&appid=$_apiKey');

    final response = await http.get(latLongUrl);

    if (response.statusCode != 200) {
      throw Exception('Error getting location lat&long location for: $city');
    }
    final resJson = jsonDecode(response.body);

    final cityData = resJson[0];

    final latitude = cityData['lat'] as double;
    final longtitude = cityData['lon'] as double;

    return {'latitude': latitude, 'longtitude': longtitude};
  }

  Future<Weather> fetchWeather(Map<String, double> latLong) async {
    final lat = latLong['latitude'];
    final long = latLong['longtitude'];

    if (lat == null || long == null) {
      throw Exception('Error reading latitude and longtitude');
    }

    final weatherUrl = Uri.parse(
        '$baseUrl/data/3.0/onecall?lat=${lat.toInt()}&lon=${long.toInt()}&appid=$_apiKey');

    final weatherRes = await http.get(weatherUrl);

    if (weatherRes.statusCode != 200) {
      throw Exception(
          'Error getting weather for location: lat: $lat, long: $long');
    }

    final weatherJson = jsonDecode(weatherRes.body);

    print(weatherJson);
    return Weather.fromJson(weatherJson);
  }
}
