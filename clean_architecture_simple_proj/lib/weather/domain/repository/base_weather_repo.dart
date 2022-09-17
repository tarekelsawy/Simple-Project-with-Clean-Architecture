import 'package:clean_architecture_simple_proj/weather/domain/entities/base_weather.dart';

abstract class BaseWeatherRepo {
  Future<Weather?> getWeatherByCountryName(String countryName);
}
