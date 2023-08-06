import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/blocs/theme_bloc.dart';
import '../../theme/colors.dart';


class CustomLivePreviewCard extends StatelessWidget {
  final VoidCallback? onPress;

  const CustomLivePreviewCard({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    final theme =
        BlocProvider.of<ThemeBloc>(context, listen: false).getThemeMode;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onPress?.call();
        },
        child: Row(
          children: [
            SvgPicture.asset(
              'svg/link_chain.svg',
              width: 20,
              height: 20,
              color: theme == ThemeMode.dark ? Colors.white : Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Live Preview',
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
