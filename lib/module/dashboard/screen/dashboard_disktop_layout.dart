import 'package:flutter/material.dart';
import 'package:responsive_dashboard/global/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/module/dashboard/screen/content.dart';
import 'package:responsive_dashboard/module/dashboard/screen/content_bottom_view.dart';

class DisktopLayout extends StatelessWidget {
  const DisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawerWidget(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ContentView(),
              SizedBox(
                height: 24,
              ),
              ContentBottomView(),
            ],
          ),
        )
      ],
    );
  }
}
