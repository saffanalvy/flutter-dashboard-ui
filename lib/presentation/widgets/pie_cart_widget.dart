import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/pie_chart_health_data.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';
import 'package:flutter_dashboard_ui/util/measurements.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = PieChartHealthData();
    
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.pieChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: kDefaultPadding),
                Text(
                  "70%", 
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    height: 0.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text("of 100%"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}