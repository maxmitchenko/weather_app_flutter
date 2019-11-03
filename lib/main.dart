import 'package:flutter/material.dart';
import './weather.dart';
import './weather_container.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final weather =
        Weather(30, 'Kharkiv', 'http://openweathermap.org/img/wn/10d@2x.png');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Overview'),
        ),
        body: Center(
          child: WeatherContainer(
            weather: weather,
          ),
        ),
      ),
    );
  }
  }