import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,style: AppStyles.styleMedium16,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Type  $name',
              hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA),),
              fillColor: Color(0xffF1F1F1),
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12,),borderSide: BorderSide.none),
            ),
          )
        ],
      );
  }

}