import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/data_structures/side_menu_data.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';
import 'package:flutter_dashboard_ui/util/measurements.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {

  late SideMenuData sideMenuData;
  late int selectedIndex;

  @override
  void initState() {
    //Initializing variables and objects
    sideMenuData = SideMenuData();
    selectedIndex = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: ListView.builder(
        itemCount: sideMenuData.menuItems.length,
        itemBuilder: (context, index) => buildSideMenuElements(sideMenuData, index),
      ),
    );
  }

  //Build Side Menu Elements Method
  Widget buildSideMenuElements(SideMenuData data, int index){

    final isSelected = selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        color: isSelected ? kSelectionColor : kTransparent,
      ),
      child: InkWell(
        onTap: () => setState(() => selectedIndex = index),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menuItems[index].icon,
                color: isSelected ? kSelectedSideMenuItemColor : kSideMenuItemColor,
              ),
            ),
            Text(
              data.menuItems[index].title,
              style: TextStyle(
                fontSize: kSideMenuFontSize,
                color: isSelected ? kSelectedSideMenuItemColor : kSideMenuItemColor,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
          ),
      ),
    );
  }
}