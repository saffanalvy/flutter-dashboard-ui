import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/scheduled_task_data.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/custom_card_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduledTaskData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        
        const SizedBox(height: 12),

        for (var index=0; index < data.scheduled.length; index++)
        Column(

          children: [

            CustomCardWidget(
              color: kSelectedSideMenuItemColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.scheduled[index].title,
                            style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 2),

                          Text(
                            data.scheduled[index].date,
                            style: const TextStyle(
                              fontSize: 12,
                              color: kGrey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.more),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ],
    );
  }
}