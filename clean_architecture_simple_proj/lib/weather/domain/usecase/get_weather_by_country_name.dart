import 'package:clean_architecture_simple_proj/weather/domain/repository/base_weather_repo.dart';

import '../entities/base_weather.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepo baseWeatherRepo;
  GetWeatherByCountryName(this.baseWeatherRepo);

  Future<Weather?> getWeather(String countryName) async {
    return await baseWeatherRepo.getWeatherByCountryName(countryName);
  }
}
