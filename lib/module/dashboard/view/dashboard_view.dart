import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/screen/dashboard_disktop_layout.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        disktopLayout: (context) => const DisktopLayout(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}
