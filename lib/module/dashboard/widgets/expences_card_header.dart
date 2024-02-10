import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpencesCardHeader extends StatelessWidget {
  const ExpencesCardHeader(
      {super.key, required this.icon, required this.isActive});
  final String icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: isActive
                ? Colors.white.withOpacity(0.100000000001)
                : const Color(0xffFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: !isActive
                ? SvgPicture.asset(icon)
                : SvgPicture.asset(
                    icon,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            width: 16,
          ),
        ),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isActive ? Colors.white : const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
