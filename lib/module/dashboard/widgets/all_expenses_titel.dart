import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/monthely_widget.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class AllExpencesTitle extends StatelessWidget {
  const AllExpencesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        MonthelyWidget(),
      ],
    );
  }
}
