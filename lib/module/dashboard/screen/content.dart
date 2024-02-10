import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/icons/icons.dart';
import 'package:responsive_dashboard/models/all_expences_card_model.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/all_expenses_titel.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/background_widget.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/expenses_card.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});
  static const List<AllExpensesCardModel> models = [
    AllExpensesCardModel(
      name: 'Balance',
      date: 'April 2022',
      icon: Assets.iconsIncome,
      price: 20129,
    ),
    AllExpensesCardModel(
      name: 'Income',
      date: 'April 2022',
      icon: Assets.iconsIncome,
      price: 20129,
    ),
    AllExpensesCardModel(
      name: 'Expenses',
      date: 'April 2022',
      icon: Assets.iconsIncome,
      price: 20129,
    ),
  ];

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  int selectedTaped = 0;
  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Column(
        children: [
          const AllExpencesTitle(),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: List.generate(
              ContentView.models.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (selectedTaped != index) {
                      setState(() {
                        selectedTaped = index;
                      });
                    }
                  },
                  child: Padding(
                    padding: index == 1
                        ? const EdgeInsets.symmetric(horizontal: 12)
                        : EdgeInsets.zero,
                    child: ExpensesCard(
                        allExpensesCardModel: ContentView.models[index],
                        isActive: selectedTaped == index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
