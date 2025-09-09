import 'package:charts_flutter_demo/controllers/splash_controller.dart';
import 'package:charts_flutter_demo/navigations/navigation.dart';
import 'package:charts_flutter_demo/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Chart",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      navigatorKey: AppNavigation.navKey,
      home: ChangeNotifierProvider(
        create: (context) => SplashController(),
        child: SplashScreen(),
      ),
        onGenerateRoute: (settings) =>
            AppNavigation.onRouteGenerated(settings),
    );
  }
}
