import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/bar_graph_data.dart';
import 'package:flutter_dashboard_ui/data/models/graph_model.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/custom_card_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class BarGraphCardWidget extends StatelessWidget {
  const BarGraphCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
        childAspectRatio: 5/4,
      ), 
      itemBuilder: (context, index){
        return CustomCardWidget(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  barGraphData.data[index].label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Expanded(
                child: BarChart(
                  BarChartData(
                    borderData: FlBorderData(border: const Border()),
                    gridData: const FlGridData(show: false),
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color: barGraphData.data[index].color,
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGraphData.label[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: kGrey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          }
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({required List<GraphModel> points, required Color color}) {
    return points.map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
      BarChartRodData(
        toY: point.y,
        width: 12,
        color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(3),
          topRight: Radius.circular(3),
        ),
      ),
    ],)).toList();
  }

}