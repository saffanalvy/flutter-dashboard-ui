import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/health_data.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/custom_card_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';
import 'package:flutter_dashboard_ui/util/responsive.dart';

class ActivityDetailsCardWidget extends StatelessWidget {
  const ActivityDetailsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthData();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4, 
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(healthDetails.healthData[index].icon,
              width: 50, 
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: kGrey,
                fontWeight: FontWeight.normal,
              ),
            ),     
          ],
        ),
      ),
    );
  }
}