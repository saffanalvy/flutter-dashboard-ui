import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/pie_cart_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/scheduled_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/summary_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          SizedBox(height: 20),
          PieChartWidget(),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.all(20),
            child: SummaryDetailsWidget(),
          ),
          SizedBox(height: 40),
          ScheduledWidget(),
        ],
      ),
    );
  }
}