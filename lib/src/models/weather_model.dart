class WeatherModel {
  final String temp, weather;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temp = json["main"]['temp'],
        weather = json["weather"]['main'];
}
