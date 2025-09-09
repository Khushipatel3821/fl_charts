import 'dart:async';
import 'dart:math' as math;
import 'package:charts_flutter_demo/navigations/navigation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LiveChartController extends ChangeNotifier implements Initializable {
  List<LiveData> chartData = List.empty(growable: true);
  late ChartSeriesController chartSeriesController;
  int time = 10;
  Timer? timer;

  @override
  void initialize() {
    chartData = getChartData();
    timer = Timer.periodic(const Duration(seconds: 1), updateDataSource);
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(0, 42),
      LiveData(1, 44),
      LiveData(2, 49),
      LiveData(3, 41),
      LiveData(4, 42),
      LiveData(5, 43),
      LiveData(6, 45),
      LiveData(7, 49),
      LiveData(8, 48),
      LiveData(9, 44),
    ];
  }

  void updateDataSource(Timer timer) {
    chartData.add(LiveData(time++, (math.Random.secure().nextInt(60))));
    chartData.removeAt(0);
    chartSeriesController.updateDataSource(addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  notifyListeners();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}

class LiveData {
  final int time;
  final num speed;

  LiveData(this.time, this.speed);
}