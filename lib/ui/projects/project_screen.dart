import 'package:app/ui/projects/widgets/custom_project_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/blocs/index_screen_bloc.dart';
import '../widgets/custom_title.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        BlocProvider.of<IndexScreenCubit>(context, listen: false).state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 190),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomTitle(
            title: 'Projects',
            subTitle: 'Things I’ve built so far',
            center: true,
            bottomSpace: 99,
            titleSubTitleMidSpace: 49,
          ),
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            alignment: WrapAlignment.spaceAround,
            children: controller.projects!
                .map(
                  (e) => CustomProjectCard(
                    project: e,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
