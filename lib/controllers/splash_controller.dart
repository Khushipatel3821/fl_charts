import 'package:charts_flutter_demo/navigations/navigation.dart';
import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  void navigateToCartesianChart() {
    Navigator.pushNamed(
      AppNavigation.navKey.currentContext!,
      AppNavigation.cartesianChartRoute,
    );
  }

  void navigateToPieChart() {
    Navigator.pushNamed(
      AppNavigation.navKey.currentContext!,
      AppNavigation.pieChartRoute,
    );
  }

  void navigateToRadialChart() {
    Navigator.pushNamed(
      AppNavigation.navKey.currentContext!,
      AppNavigation.radialChartRoute,
    );
  }

  void navigateToLiveChart() {
    Navigator.pushNamed(
      AppNavigation.navKey.currentContext!,
      AppNavigation.liveChartRoute,
    );
  }
}
