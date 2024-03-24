import 'package:flutter_dashboard_ui/data/models/health_activity_model.dart';

class HealthData {
  final healthData = const [
    HealthActivityModel(icon: "assets/icons/fire.png", title: "Calories Burned", value: "243"),
    HealthActivityModel(icon: "assets/icons/footprint.png", title: "Steps", value: "9893"),
    HealthActivityModel(icon: "assets/icons/distance.png", title: "Distance", value: "6 Km"),
    HealthActivityModel(icon: "assets/icons/sleep.png", title: "Sleep", value: "5Hr 33Min"),
  ];
}