import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/blocs/theme_bloc.dart';
import '../theme/colors.dart';


class CustomTitle extends StatelessWidget {
  final bool center;
  final bool onlyTitle;
  final String title;
  final String? subTitle;
  final double bottomSpace;
  final double titleSubTitleMidSpace;
  final bool subTitleLarge;

  const CustomTitle({
    super.key,
    this.center = true,
    this.onlyTitle = false,
    required this.title,
    this.subTitle,
    required this.bottomSpace,
    required this.titleSubTitleMidSpace,
    this.subTitleLarge = true,
  });

  @override
  Widget build(BuildContext context) {
    final themeController = BlocProvider.of<ThemeBloc>(context, listen: false);
    return Column(
      crossAxisAlignment:
          center ? CrossAxisAlignment.center : CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: center ? EdgeInsets.zero : const EdgeInsets.only(left: 207),
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: themeController.getThemeMode == ThemeMode.dark
                      ? AppColors.colorD9D9D9
                      : AppColors.color42446E,
                ),
            textAlign: TextAlign.start,
          ),
        ),
        Visibility(
          visible: !onlyTitle,
          child: SizedBox(
            height: titleSubTitleMidSpace,
          ),
        ),
        Visibility(
          visible: !onlyTitle,
          child: Padding(
            padding: center
                ? EdgeInsets.zero
                : const EdgeInsets.only(left: 205, right: 687),
            child: Text(
              subTitle ?? '',
              style: subTitleLarge
                  ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: themeController.getThemeMode == ThemeMode.dark
                            ? AppColors.colorA7a7a7a7
                            : AppColors.color666666,
                      )
                  : Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: themeController.getThemeMode == ThemeMode.dark
                            ? AppColors.colorA7a7a7a7
                            : AppColors.color666666,
                      ),
              textAlign: center ? TextAlign.center : TextAlign.start,
            ),
          ),
        ),
        SizedBox(
          height: bottomSpace,
        ),
      ],
    );
  }
}
