import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temperature, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: Colors.orange,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$temperature",
          style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$location",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
        )
      ],
    ),
  );
}
