import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/models/side_menu_model.dart';

class SideMenuData {
  final menuItems = const <SideMenuModel>[
    SideMenuModel(icon: Icons.home, title: "Dashboard"),
    SideMenuModel(icon: Icons.person, title: "Profile"),
    SideMenuModel(icon: Icons.run_circle, title: "Exercise"),
    SideMenuModel(icon: Icons.history, title: "History"),
    SideMenuModel(icon: Icons.settings, title: "Settings"),
    SideMenuModel(icon: Icons.logout, title: "Sign Out"),
  ];
}