import 'package:charts_flutter_demo/controllers/live_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LiveChartScreen extends StatelessWidget {
  const LiveChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final liveChartController = context.watch<LiveChartController>();
    return Scaffold(
      appBar: AppBar(title: Text("Live Chart"), centerTitle: false),
      body: Column(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.all(10),
            child: SfCartesianChart(
              legend: Legend(isVisible: true),
              series: [
                LineSeries<LiveData, int>(
                  xValueMapper: (LiveData data, _) => data.time,
                  yValueMapper: (LiveData data, _) => data.speed,
                  onRendererCreated: (ChartSeriesController controller) {
                    liveChartController.chartSeriesController = controller;
                  },
                  dataSource: liveChartController.chartData,
                  legendItemText: "Speed",
                ),
              ],
              primaryXAxis: NumericAxis(
                majorGridLines: MajorGridLines(width: 1),
                edgeLabelPlacement: EdgeLabelPlacement.shift,
                interval: 2,
                title: AxisTitle(text: "Time(seconds)"),
              ),
              primaryYAxis: NumericAxis(
                majorGridLines: MajorGridLines(width: 1),
                edgeLabelPlacement: EdgeLabelPlacement.shift,
                interval: 2,
                title: AxisTitle(text: "Speed(m/s)"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
