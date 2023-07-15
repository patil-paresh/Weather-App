import 'package:flutter/material.dart';
import 'package:weatherapp/model/weatherData.dart';
import 'package:weatherapp/services/weatherApi.dart';
import 'package:weatherapp/views/additional_info.dart';
import 'package:weatherapp/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApi api = WeatherApi();
  WeatherData? data;

  Future<void> getData() async {
    data = await api.getCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather App"),
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                        "${data!.cityName}"),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Additional Information",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    additional_info("${data!.wind}", "${data!.humidity}",
                        "${data!.pressure}", "${data!.feelslike}")
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container();
            }));
  }
}

// Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           currentWeather(Icons.wb_sunny_rounded, "27", "Kedarnath"),
//           Divider(),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "Additional Information",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           additional_info("23", "12", "243", "123")
//         ],
//       ),
