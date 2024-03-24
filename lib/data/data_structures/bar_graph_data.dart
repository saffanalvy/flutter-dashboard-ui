import 'package:flutter_dashboard_ui/data/models/graph_model.dart';
import 'package:flutter_dashboard_ui/data/models/line_graph_model.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

class BarGraphData{
  final data = [
    const BarGraphModel(
      label: "Activity Level", 
      color: kOrange, 
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
    ),
    const BarGraphModel(
      label: "Nutrition Level", 
      color: kLightPink, 
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 6),
        GraphModel(x: 5, y: 7),
      ],
    ),
    const BarGraphModel(
      label: "Hydration Level", 
      color: kLightBlue, 
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}