import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weatherData.dart';

class WeatherApi {
  Future<WeatherData>? getCurrentWeather() async {
    var endpoint = Uri.parse(
        "https://api.weatherapi.com/v1/forecast.json?key=fd93c59e82544823833103447232606&days=7&q=London");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherData.fromJson(body).cityName);
    return WeatherData.fromJson(body);
  }
}
