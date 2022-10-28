import 'package:tempo_template/services/location.dart';
import 'package:tempo_template/services/networking.dart';

const apiKey = '65858563322e3c0b0b3ec781fccbcb2f';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}'
            '&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }


  String getWeatherIcon(int climatico) {
    if (climatico < 300) {
      return '🌩';
    } else if (climatico < 400) {
      return '🌧';
    } else if (climatico < 600) {
      return '☔️';
    } else if (climatico < 700) {
      return '☃️';
    } else if (climatico < 800) {
      return '🌫';
    } else if (climatico == 800) {
      return '☀️';
    } else if (climatico <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'É tempo de 🍦';
    } else if (temp > 20) {
      return 'O tempo está bom para bermuda e 👕';
    } else if (temp < 10) {
      return 'Você precisará de 🧣 e 🧤';
    } else {
      return 'Leve um 🧥';
    }
  }
}