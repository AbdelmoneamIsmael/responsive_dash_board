import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class QuickIvoiceTitle extends StatelessWidget {
  const QuickIvoiceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xffFAFAFA),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
