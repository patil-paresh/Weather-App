class WeatherData {
  String? cityName;
  double? temp;
  double? wind;
  double? feelslike;
  int? humidity;
  int? pressure;

  WeatherData({
    this.cityName,
    this.temp,
    this.feelslike,
    this.humidity,
    this.pressure,
    this.wind,
  });

  WeatherData.fromJson(Map<String, dynamic> json) {
    cityName = json["location"]["name"];
    temp = json["current"]["temp_c"];
    wind = json["current"]["wind_kph"];
    feelslike = json["current"]["feelslike_c"];
    humidity = json["current"]["humidity"];
    pressure = json["current"]["pressure_mb"];
  }
}
