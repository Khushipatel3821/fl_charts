import 'package:flutter/material.dart';

class PieChartController extends ChangeNotifier {

  List<PieData> chartData = [
    PieData(38000, "Def"),
    PieData(63000, "Ghi"),
    PieData(45000, "Abc"),
    PieData(28000, "Xyz"),
  ];
}

class PieData {
  final num yData;
  final String xData;

  PieData(this.yData, this.xData);
}