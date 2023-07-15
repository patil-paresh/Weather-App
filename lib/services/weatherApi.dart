import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weatherData.dart';

class WeatherApi {
  Future<WeatherData>? getCurrentWeather() async {
    String API_KEY = "Enter Your API_key";
    var endpoint = Uri.parse(
        "https://api.weatherapi.com/v1/forecast.json?key=${API_KEY}&days=7&q=London");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherData.fromJson(body).cityName);
    return WeatherData.fromJson(body);
  }
}
