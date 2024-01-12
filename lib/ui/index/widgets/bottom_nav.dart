import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/blocs/index_screen_bloc.dart';
import '../../../others/strings.dart';
import 'custom_bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final cc = BlocProvider.of<IndexScreenCubit>(context, listen: false);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 180),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Row(
                children: [
                  Text(
                    cc.state.contactInfo!.phoneNo!,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    cc.state.contactInfo!.email!,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SvgPicture.asset(
                    'svg/github.svg',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    'svg/twitter.svg',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    'svg/linkdin.svg',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        const Divider(
          height: 0,
          indent: 189,
          endIndent: 202,
        ),
        const SizedBox(
          height: 54,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 190),
          child: Row(
            children: [
              CustomBottomNavItem(
                name: Strings.home,
                onPress: () => cc.onClick(0),
              ),
              const SizedBox(
                width: 52,
              ),
              CustomBottomNavItem(
                name: Strings.about,
                onPress: () => cc.onClick(1),
              ),
              const SizedBox(
                width: 52,
              ),
              CustomBottomNavItem(
                name: Strings.techStack,
                onPress: () => cc.onClick(2),
              ),
              const SizedBox(
                width: 52,
              ),
              CustomBottomNavItem(
                name: Strings.projects,
                onPress: () => cc.onClick(3),
              ),
              const SizedBox(
                width: 52,
              ),
              CustomBottomNavItem(
                name: Strings.contact,
                onPress: () => cc.onClick(4),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
