import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/data/models/graph_model.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  const BarGraphModel({required this.label, required this.color, required this.graph});
}