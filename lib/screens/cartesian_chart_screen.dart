import 'package:charts_flutter_demo/controllers/cartesian_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChartScreen extends StatelessWidget {
  const CartesianChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartesianChartController = context.watch<CartesianChartController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartesian Chart", style: TextStyle(fontSize: 20)),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  LineSeries<SalesData, int>(
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  BarSeries<SalesData, int>(
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  SplineSeries<SalesData, int>(
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  AreaSeries<SalesData, int>(
                    color: Colors.greenAccent,
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  ColumnSeries<SalesData, int>(
                    color: Colors.greenAccent,
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: SfCartesianChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: "Sales Data"),
                series: [
                  WaterfallSeries<SalesData, int>(
                    color: Colors.greenAccent,
                    dashArray: <double>[10,5],// [length, gap]
                    pointColorMapper: (SalesData sales, _) => sales.color,
                    legendItemText: "Sales",
                    dataSource: cartesianChartController.chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
