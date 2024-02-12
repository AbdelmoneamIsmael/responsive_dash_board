import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backGroundColor,
      required this.textBackGroundColor});
  final String text;
  final Color backGroundColor;
  final Color textBackGroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,
          padding: const EdgeInsets.symmetric(vertical: 20),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
          elevation: 0,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleSemiBold18.copyWith(color: textBackGroundColor),
          ),
        ),
      ),
    );
  }
}
