import 'package:flutter/material.dart';
import './weather_provider.dart';
import './weather_container.dart';
import './weather.dart';

class WeatherOverview extends StatelessWidget {
final _weatherProvider = WeatherProvider();

@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Weather Overview"),
  ),
  body: Center(
    child: FutureBuilder<Weather>(
      future: _weatherProvider.getCurrentWeather(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WeatherContainer(weather: snapshot.data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    ),
  ),
);
}
}