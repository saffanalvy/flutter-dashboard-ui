import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/presentation/screens/dashboard_screen.dart';
import 'package:flutter_dashboard_ui/util/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        brightness: Brightness.dark,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
