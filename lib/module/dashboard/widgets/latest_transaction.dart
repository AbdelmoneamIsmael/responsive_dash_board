import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/latest_user_transaction_listview.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        LatestUserTransactionListView(),
      ],
    );
  }
}
