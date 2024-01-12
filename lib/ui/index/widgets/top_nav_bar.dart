import 'package:app/others/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/index_screen_bloc.dart';
import '../../../data/blocs/theme_bloc.dart';
import '../../../others/strings.dart';
import '../../widgets/custom_social_icon.dart';
import '../../widgets/custom_toggle_theme_switch.dart';
import 'custom_nav_item.dart';

class TopNavBar extends StatelessWidget {
  final List<GlobalKey> gKeys;

  const TopNavBar({super.key, required this.gKeys});

  @override
  Widget build(BuildContext context) {
    final themeController = BlocProvider.of<ThemeBloc>(context, listen: false);
    final cc = BlocProvider.of<IndexScreenCubit>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.only(
        left: 177,
        right: 230,
        top: 41,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomNavItem(
                name: Strings.home,
                onPress: () => cc.onClick(0),
              ),
              const SizedBox(
                width: 67,
              ),
              CustomNavItem(
                name: Strings.about,
                onPress: () => cc.onClick(1),
              ),
              const SizedBox(
                width: 63,
              ),
              CustomNavItem(
                name: Strings.techStack,
                onPress: () => cc.onClick(2),
              ),
              const SizedBox(
                width: 54,
              ),
              CustomNavItem(
                name: Strings.projects,
                onPress: () => cc.onClick(3),
              ),
              const SizedBox(
                width: 50,
              ),
              CustomNavItem(
                name: Strings.contact,
                onPress: () => cc.onClick(4),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomSocialIcon(
                icon: 'svg/linkdin.svg',
                onPress: () {
                  if (cc.portfolio.contactInfo!.linkdinLink != null) {
                    Utils.launchHttpUrl(cc.portfolio.contactInfo!.linkdinLink!);
                  }
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomSocialIcon(
                icon: 'svg/github.svg',
                onPress: () {
                  if (cc.portfolio.contactInfo!.githubLink != null) {
                    Utils.launchHttpUrl(cc.portfolio.contactInfo!.githubLink!);
                  }
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomSocialIcon(
                icon: 'svg/twitter.svg',
                onPress: () {
                  if (cc.portfolio.contactInfo!.twitterLink != null) {
                    Utils.launchHttpUrl(cc.portfolio.contactInfo!.twitterLink!);
                  }
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomToggleThemeSwitch(
                onToggled: (v) {
                  themeController.toggleTheme();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
