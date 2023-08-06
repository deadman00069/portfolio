import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/blocs/theme_bloc.dart';
import '../theme/colors.dart';


class CustomSocialIcon extends StatelessWidget {
  final String icon;
  final VoidCallback? onPress;

  const CustomSocialIcon({super.key, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    final themeController = BlocProvider.of<ThemeBloc>(context, listen: false);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onPress?.call();
        },
        child: SvgPicture.asset(
          icon,
          color: themeController.getThemeMode == ThemeMode.dark
              ? AppColors.colorA7a7a7a7
              : AppColors.color666666,
        ),
      ),
    );
  }
}
