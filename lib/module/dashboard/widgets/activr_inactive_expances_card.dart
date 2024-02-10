import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_card_model.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/expences_card_header.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class ActiveExpencesCard extends StatelessWidget {
  const ActiveExpencesCard({
    super.key,
    required this.allExpensesCardModel,
    required this.isActive,
  });

  final AllExpensesCardModel allExpensesCardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          side: BorderSide(
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpencesCardHeader(
              icon: allExpensesCardModel.icon, isActive: isActive),
          const SizedBox(
            height: 20,
          ),
          Text(
            allExpensesCardModel.name,
            style: AppStyles.styleBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesCardModel.date,
            style: AppStyles.styleRegular14.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '\$ ${allExpensesCardModel.price}',
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class InActiveExpencesCard extends StatelessWidget {
  const InActiveExpencesCard({
    super.key,
    required this.allExpensesCardModel,
    required this.isActive,
  });

  final AllExpensesCardModel allExpensesCardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          side: BorderSide(
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpencesCardHeader(
              icon: allExpensesCardModel.icon, isActive: isActive),
          const SizedBox(
            height: 20,
          ),
          Text(
            allExpensesCardModel.name,
            style: AppStyles.styleBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesCardModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '\$ ${allExpensesCardModel.price}',
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
