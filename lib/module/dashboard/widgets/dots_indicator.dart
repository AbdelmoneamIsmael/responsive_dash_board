import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.radius, required this.isActive});
  final double radius;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive?  radius*4:radius*2,
      duration: const Duration(milliseconds: 200),
      child: isActive?ActiveDot(radius: radius):InActiveDot(radius: radius),
    );

  }
}
class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
       

    height:8 ,
    decoration:  BoxDecoration(
      borderRadius:BorderRadius.circular(radius),
    color:Colors.blue ,
    shape:BoxShape.rectangle,
    ),);
  }
}
class InActiveDot extends StatelessWidget {
  const InActiveDot({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
        

    height:8 ,
    decoration: BoxDecoration(

    color:Colors.grey ,
    shape:BoxShape.circle,
    ),);
  }
}

