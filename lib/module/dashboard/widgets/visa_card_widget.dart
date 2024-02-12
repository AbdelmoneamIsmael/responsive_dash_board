import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/generated/icons/icons.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class VisaCardWidget extends StatelessWidget {
  const VisaCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          image:const DecorationImage(image: AssetImage(Assets.iconsCardBackground)),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name card',style: AppStyles.styleRegular16,),
                    SizedBox(height: 8,),
                    Text('Syah Bandi',style: AppStyles.styleMedium20,),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 21.0),
                  child: SvgPicture.asset(Assets.iconsGallery),
                ),
              ],
            ),
           const  Expanded(child: SizedBox()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('0918 8124 0042 8129',style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),),
                const SizedBox(height: 12,),
                Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
