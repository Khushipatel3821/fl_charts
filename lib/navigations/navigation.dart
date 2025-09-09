import 'package:charts_flutter_demo/controllers/cartesian_chart_controller.dart';
import 'package:charts_flutter_demo/controllers/live_chart_controller.dart';
import 'package:charts_flutter_demo/controllers/pie_chart_controller.dart';
import 'package:charts_flutter_demo/controllers/radial_chart_controller.dart';
import 'package:charts_flutter_demo/controllers/splash_controller.dart';
import 'package:charts_flutter_demo/screens/cartesian_chart_screen.dart';
import 'package:charts_flutter_demo/screens/live_chart_screen.dart';
import 'package:charts_flutter_demo/screens/pie_chart_screen.dart';
import 'package:charts_flutter_demo/screens/radial_chart_screen.dart';
import 'package:charts_flutter_demo/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppNavigation {
  AppNavigation._();

  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static const String demoScreenRoute = "/dummy";
  static const String cartesianChartRoute = "/cartesianChart";
  static const String pieChartRoute = "/pieChart";
  static const String radialChartRoute = "/radialChart";
  static const String liveChartRoute = "/liveChart";

  static final defaultRoute = MaterialPageRoute(
    builder: (_) => ChangeNotifierProvider(
      create: (context) => SplashController(),
      child: const SplashScreen(),
    ),
  );

  static onRouteGenerated(RouteSettings settings) {
    switch (settings.name) {
      case cartesianChartRoute:
        return _getPageTransition<CartesianChartController>(
          settings: settings,
          page: const CartesianChartScreen(),
          controller: CartesianChartController(),
        );
      case pieChartRoute:
        return _getPageTransition<PieChartController>(
          settings: settings,
          page: const PieChartScreen(),
          controller: PieChartController(),
        );
      case radialChartRoute:
        return _getPageTransition<RadialChartController>(
          settings: settings,
          page: const RadialChartScreen(),
          controller: RadialChartController(),
        );
      case liveChartRoute:
        return _getPageTransition<LiveChartController>(
          settings: settings,
          page: const LiveChartScreen(),
          controller: LiveChartController(),
        );
      default:
        return defaultRoute;
    }
  }

  static _getPageTransition<T extends ChangeNotifier>({
    required RouteSettings settings,
    required Widget page,
    required T controller,
  }) => MaterialPageRoute(
    builder: (context) {
      if (controller is Initializable) {
        (controller as Initializable).initialize();
      }

      return ChangeNotifierProvider<T>.value(
        value: controller,
        child: page,
      );
    },
    settings: settings,
  );
}

abstract class Initializable {
  void initialize();
}
