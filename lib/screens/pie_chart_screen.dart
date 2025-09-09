import 'package:charts_flutter_demo/controllers/pie_chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartScreen extends StatelessWidget {
  const PieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartController = context.watch<PieChartController>();
    return Scaffold(
      appBar: AppBar(title: Text("Pie Chart"), centerTitle: false,),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: SfCircularChart(
              backgroundColor: Colors.white30,
              title: ChartTitle(text: "Sales Data"),
              legend: Legend(isVisible: true, position: LegendPosition.right),
              palette: [Colors.blue, Colors.deepPurple, Colors.orange, Colors.green],
              series: [
                PieSeries<PieData, String>(
                  explode: true,
                  explodeIndex: 0,
                  // radius: '150',
                  dataSource: pieChartController.chartData,
                  xValueMapper: (PieData data, _) => data.xData,
                  yValueMapper: (PieData data, _) => data.yData,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
