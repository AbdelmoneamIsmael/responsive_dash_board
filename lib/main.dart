import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/view/dashboard_view.dart';

void main() {
  runApp(const ResponsiveAppDashBoard());
}

class ResponsiveAppDashBoard extends StatelessWidget {
  const ResponsiveAppDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
