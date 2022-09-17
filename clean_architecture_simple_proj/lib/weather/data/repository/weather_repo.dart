import 'package:clean_architecture_simple_proj/weather/data/data_source/remote_data/remote_data_apis.dart';
import 'package:clean_architecture_simple_proj/weather/domain/entities/base_weather.dart';
import 'package:clean_architecture_simple_proj/weather/domain/repository/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepo {
  BaseRemoteDataAPIs baseRemoteDataAPIs;
  WeatherRepository(this.baseRemoteDataAPIs);
  @override
  Future<Weather?> getWeatherByCountryName(String countryName) {
    return baseRemoteDataAPIs.getWeatherByCountryName(countryName);
  }
}
