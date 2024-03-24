import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/line_data.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/custom_card_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class LineChartCardWidget extends StatelessWidget {
  const LineChartCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          
          const SizedBox(height: 20),

          AspectRatio(
            aspectRatio: 16/6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                minX: 0,
                minY: -5,
                maxX: 120,
                maxY: 105,
                titlesData: FlTitlesData(
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta){
                        return data.bottomTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: Text(
                                data.bottomTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400],
                                ),
                              ), 
                            )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (double value, TitleMeta meta){
                        return data.leftTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400],
                                ),
                              ), 
                            )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: data.spots,
                    color: kSelectionColor,
                    barWidth: 2.5,
                    dotData: const FlDotData(show: false),              
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kSelectionColor.withOpacity(0.5),
                          kTransparent,
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}