import 'package:flutter/material.dart';

class CartesianChartController extends ChangeNotifier {

  List<SalesData> chartData = [
    SalesData(2001, 10000, Colors.red),
    SalesData(2003, 40000, Colors.purpleAccent),
    SalesData(2005, 20000, Colors.green),
    SalesData(2007, 34000, Colors.blueAccent),
    SalesData(2009, 14000, Colors.yellow),
  ];
}

class SalesData {
  final int year;
  final double sales;
  final Color color;

  SalesData(this.year, this.sales, this.color);
}