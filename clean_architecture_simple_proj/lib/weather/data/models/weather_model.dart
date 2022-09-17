import 'package:clean_architecture_simple_proj/weather/domain/entities/base_weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.countryName,
    required super.description,
    required super.main,
    required super.pressure,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      countryName: json['name'].toString(),
      description: json['weather'][0]['description'].toString(),
      id: json['id'].toString(),
      main: json['weather'][0]['main'].toString(),
      pressure: json['main']['pressure'].toString(),
    );
  }
}
