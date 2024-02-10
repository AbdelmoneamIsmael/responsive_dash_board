import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class MonthelyWidget extends StatelessWidget {
  const MonthelyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
          side: BorderSide(
            width: 2,
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Month',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ],
      ),
    );
  }
}
