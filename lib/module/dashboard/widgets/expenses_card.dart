import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_card_model.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/activr_inactive_expances_card.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard(
      {super.key, required this.allExpensesCardModel, required this.isActive});
  final AllExpensesCardModel allExpensesCardModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpencesCard(
            allExpensesCardModel: allExpensesCardModel,
            isActive: isActive,
          )
        : InActiveExpencesCard(
            allExpensesCardModel: allExpensesCardModel,
            isActive: isActive,
          );
  }
}
