import 'package:clean_architecture_simple_proj/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/constances.dart';

abstract class BaseRemoteDataAPIs {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataAPIs implements BaseRemoteDataAPIs {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    WeatherModel? json;

    await Dio()
        .get(
      '${WeatherConstances.baseUrl}weather?q=$countryName&appid=${WeatherConstances.apiKey}',
    )
        .then((response) {
      print(countryName);
      json = WeatherModel.fromJson(response.data);
      print(response.data);
    }).catchError((onError) {
      print('onError1:${onError.toString()}');
    });
    return json;
  }
}
