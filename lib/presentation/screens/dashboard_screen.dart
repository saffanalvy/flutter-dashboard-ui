import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/dashboard_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/side_menu_widget.dart';
import 'package:flutter_dashboard_ui/presentation/widgets/summary_widget.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';
import 'package:flutter_dashboard_ui/util/responsive.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isComputer = Responsive.isComputer(context);


    return Scaffold(
      //drawerScrimColor: kBackgroundColor,
      drawer: !isComputer
        ? SizedBox(
            width: 250,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    kBackgroundColor,
                    kTransparent,
                  ],
                ),
              ),
              child: const SideMenuWidget(),
            ),
          )
        : null,
      endDrawer: Responsive.isMobile(context) 
        ? SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Container(decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    kBackgroundColor,
                    kTransparent,
                  ],
                ),
              ),
              child: const SummaryWidget(),
            ),
          )
        : null,
      body: SafeArea(
        child: Row(
          children: [
            if(isComputer)
              const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),

              const Expanded(
                flex: 7,
                child: DashboardWidget(),
               ),
              
              if(isComputer)
                const Expanded(
                  flex: 3,
                  child: SummaryWidget(),
                ),
          ],
        ),),
    );
  }
}