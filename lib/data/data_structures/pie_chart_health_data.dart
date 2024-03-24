import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class PieChartHealthData{
  final pieChartSelectionData = [
    PieChartSectionData(
      color: kPrimaryColor,
      value: 25,
      showTitle: false,
      radius: 25,
    ),
    
    PieChartSectionData(
      color: kCyan,
      value: 20,
      showTitle: false,
      radius: 22,
    ),

    PieChartSectionData(
      color: kLightPink,
      value: 10,
      showTitle: false,
      radius: 19,
    ),

    PieChartSectionData(
      color: kRed,
      value: 15,
      showTitle: false,
      radius: 16,
    ),

    PieChartSectionData(
      color: kPrimaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),

  ];
}