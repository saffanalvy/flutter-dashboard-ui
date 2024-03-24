import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/custom_card_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      color: kSummaryDetails,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal", "305"),
          buildDetails("Steps", "10983"),
          buildDetails("Distance", "7 Km"),
          buildDetails("Sleep", "7Hr"),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value){
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: kGrey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}