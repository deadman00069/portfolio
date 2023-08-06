import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {

  final String icon;
  final Color? color;

  const CustomIcon({super.key, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      icon,
      width: 120,
      height: 120,
      color: color,
    );
  }
}
