import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/background_widget.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/quick_invoice_title.dart';

class ContentBottomView extends StatelessWidget {
  const ContentBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackGroundWidget(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickIvoiceTitle(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction(),
      ],
    ));
  }
}
