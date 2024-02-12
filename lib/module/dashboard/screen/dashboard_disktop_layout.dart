import 'package:flutter/material.dart';
import 'package:responsive_dashboard/global/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/module/dashboard/screen/operation_screen.dart';
import 'package:responsive_dashboard/module/dashboard/screen/profile_details.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/background_widget.dart';

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
          flex: 4,
          child: OperationScreen(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex:2,child: BackGroundWidget(child: ProfileDetails(),),),
      ],
    );
  }
}
