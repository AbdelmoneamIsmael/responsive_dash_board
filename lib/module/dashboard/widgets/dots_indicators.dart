import 'package:flutter/material.dart';
import 'package:responsive_dashboard/module/dashboard/widgets/dots_indicator.dart';

class PageViewDots extends StatefulWidget {
  const PageViewDots({super.key, required this.length, required this.index, required this.radius});
  final int length;
  final int index;
  final double radius;
  @override
  State<PageViewDots> createState() => _PageViewDotsState();
}

class _PageViewDotsState extends State<PageViewDots> {
  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(widget.length, (index) => DotsIndicator(radius: widget.radius, isActive: index==widget.index,),),);
  }
}
