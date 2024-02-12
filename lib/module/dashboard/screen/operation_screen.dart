import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/screen/content.dart';
import 'package:responsive_dashboard/module/dashboard/screen/content_bottom_view.dart';

class OperationScreen extends StatelessWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
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
    );
  }
}
