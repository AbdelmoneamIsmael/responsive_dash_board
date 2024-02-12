import 'package:flutter/material.dart';
import 'package:responsive_dashboard/global/widgets/custom_bottom.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/custom_text_field.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/latest_user_transaction_listview.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        LatestUserTransactionListView(),
        Divider(height: 48,color: Color(0xffF1F1F1),),
        Row(
          children: [
            Expanded(child: CustomTextFieldWidget(name: 'Customer name')),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFieldWidget(name: 'Customer Email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTextFieldWidget(name: 'Item name')),
            SizedBox(width: 16,),
            Expanded(child: CustomTextFieldWidget(name: 'Item mount')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
            children: [
              Expanded(child: CustomButton(text: 'Add more details', backGroundColor: Colors.white,textBackGroundColor: Color(0xff4EB7F2),),),
              SizedBox(width: 24,),
              Expanded(child: CustomButton(text: 'Send Money', textBackGroundColor: Colors.white,backGroundColor:  Color(0xff4EB7F2),),),
            ],
        )
      ],
    );
  }
}


