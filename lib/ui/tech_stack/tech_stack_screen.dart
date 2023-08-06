import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/blocs/theme_bloc.dart';
import '../home/widgets/custom_icon.dart';
import '../widgets/custom_title.dart';

class TechStackScreen extends StatelessWidget {
  const TechStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = BlocProvider.of<ThemeBloc>(context, listen: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTitle(
          title: 'My Tech Stack',
          subTitle: 'Technologies I’ve been working with recently',
          center: true,
          bottomSpace: 140,
          titleSubTitleMidSpace: 49,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 184),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomIcon(
                icon: 'svg/flutter.svg',
              ),
              const CustomIcon(
                icon: 'svg/android_studio.svg',
              ),
              const CustomIcon(
                icon: 'svg/vs_code.svg',
              ),
              const CustomIcon(
                icon: 'svg/git.svg',
              ),
              CustomIcon(
                icon: 'svg/github_icon.svg',
                color: theme.getThemeMode == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 214,
        ),
      ],
    );
  }
}
