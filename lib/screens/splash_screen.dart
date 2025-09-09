import 'package:charts_flutter_demo/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = context.watch<SplashController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen", style: TextStyle(fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  splashController.navigateToCartesianChart();
                },
                child: Text("Cartesian Chart"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  splashController.navigateToPieChart();
                },
                child: Text("Pie Chart"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  splashController.navigateToRadialChart();
                },
                child: Text("Radial Chart"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  splashController.navigateToLiveChart();
                },
                child: Text("Live Chart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
