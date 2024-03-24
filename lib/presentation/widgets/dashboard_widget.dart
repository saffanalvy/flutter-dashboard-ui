import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/activity_details_card_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/bar_graph_card_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/line_chart_card_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/searchbox_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/summary_widget.dart';
import 'package:flutter_dashboard_ui/util/responsive.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const SearchBoxWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCardWidget(),
            const SizedBox(height: 18),
            const LineChartCardWidget(),
            const SizedBox(height: 18),
            const BarGraphCardWidget(),
            const SizedBox(height: 18),
            if(Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}