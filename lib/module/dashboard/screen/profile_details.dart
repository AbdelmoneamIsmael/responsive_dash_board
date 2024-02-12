import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/dots_indicators.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/visa_card_widget.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  PageController pageController=PageController();
  int showingCard=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        ExpandablePageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              showingCard=value;
            });
          },
          children: List.generate(3, (index) => const VisaCardWidget(),),
        ),
        const SizedBox(height: 19,),
        PageViewDots(length: 3, index: showingCard, radius: 8)

      ],
    );
  }
}
