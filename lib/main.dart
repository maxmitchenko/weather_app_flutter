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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Weather Overview'),
            ),
            body: OrientationBuilder(builder: (context, orientation) {
              return GridView.count(
                crossAxisCount: orientation == Orientation.portrait ? 1 : 1,
                children: List.generate(1, (index) {
                  return Center(
                      child: WeatherContainer(
                    weather: weather,
                  ));
                }),
              );
            })));
  }
}
