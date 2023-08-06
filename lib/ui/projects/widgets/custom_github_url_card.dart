import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/blocs/theme_bloc.dart';
import '../../theme/colors.dart';



class CustomGithubUrlCard extends StatelessWidget {
  final VoidCallback? onClick;

  const CustomGithubUrlCard({super.key, this.onClick});

  @override
  Widget build(BuildContext context) {
    final theme =
        BlocProvider.of<ThemeBloc>(context, listen: false).getThemeMode;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onClick?.call();
        },
        child: Row(
          children: [
            SvgPicture.asset(
              'svg/github.svg',
              width: 20,
              height: 20,
              color: theme == ThemeMode.dark ? Colors.white : Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'View Code',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: theme == ThemeMode.dark
                        ? AppColors.colorCCCCCC
                        : Colors.black,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
