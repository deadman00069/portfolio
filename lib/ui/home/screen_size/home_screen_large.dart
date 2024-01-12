import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/index_screen_bloc.dart';
import '../../../data/blocs/theme_bloc.dart';
import '../../theme/colors.dart';
import '../../widgets/custom_gradient_text.dart';

class HomeScreenLarge extends StatelessWidget {
  const HomeScreenLarge({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = BlocProvider.of<ThemeBloc>(context, listen: false);
    final controller =
        BlocProvider.of<IndexScreenCubit>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 177, right: 219),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi,\nMy name is',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: themeController.getThemeMode == ThemeMode.dark
                              ? AppColors.colorD9D9D9
                              : AppColors.color42446E,
                        ),
                  ),
                  GradientText(
                    '${controller.state.fullName}',
                    style: Theme.of(context).textTheme.displayLarge!,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff13B0F5),
                        Color(0xffE70FAA),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  Text(
                    'I build things for ${controller.state.tech}',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: themeController.getThemeMode == ThemeMode.dark
                              ? AppColors.colorD9D9D9
                              : AppColors.color42446E,
                        ),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 350,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    end: Alignment(0.0, -1),
                    begin: Alignment(0.0, 1),
                    colors: [
                      Color(0xff00C0FD),
                      Color(0xffE70FAA),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.network(

                      controller.state.imgUrl ?? '',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 348,
        ),
      ],
    );
  }
}
