import 'package:charts_flutter_demo/controllers/radial_chart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChartScreen extends StatelessWidget {
  const RadialChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radialChartController = context.watch<RadialChartController>();
    return Scaffold(
      appBar: AppBar(title: Text("Radial Chart"), centerTitle: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: SfCircularChart(
                backgroundColor: Colors.white30,
                title: ChartTitle(text: "Sales Data"),
                legend: Legend(isVisible: true, position: LegendPosition.right),
                palette: [Colors.blue, Colors.deepPurple, Colors.orange, Colors.green],
                series: [
                  RadialBarSeries<RadialData, String>(
                    dataSource: radialChartController.chartData,
                    xValueMapper: (RadialData data, _) => data.xData,
                    yValueMapper: (RadialData data, _) => data.yData,
                    trackColor: Colors.grey,
                    gap: '3%',
                    cornerStyle: CornerStyle.bothCurve,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    radius: '70%',
                    innerRadius: '40%',
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: SfCircularChart(
                backgroundColor: Colors.white30,
                title: ChartTitle(text: "Sales Data"),
                legend: Legend(isVisible: true, position: LegendPosition.right),
                palette: [Colors.blue, Colors.deepPurple, Colors.orange, Colors.green],
                series: [
                  DoughnutSeries<RadialData, String>(
                    dataSource: radialChartController.chartData,
                    xValueMapper: (RadialData data, _) => data.xData,
                    yValueMapper: (RadialData data, _) => data.yData,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}