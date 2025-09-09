import 'package:flutter/material.dart';

class RadialChartController extends ChangeNotifier {

  List<RadialData> chartData = [
    RadialData(30000, "ABC"),
    RadialData(60000, "DEF"),
    RadialData(45000, "PQR"),
    RadialData(28000, "XYZ"),
  ];

}

class RadialData {
  final num yData;
  final String xData;

  RadialData(this.yData, this.xData);
}