import 'package:flutter/material.dart';

TextStyle titleFont = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
TextStyle infoFont = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);

Widget additional_info(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titleFont,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Humidity",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: infoFont,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$humidity",
                  style: infoFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pressure",
                  style: titleFont,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Feels Like",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$pressure",
                  style: infoFont,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$feels_like",
                  style: infoFont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
