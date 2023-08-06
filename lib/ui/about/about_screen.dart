import 'package:app/ui/about/widgets/custom_company_info_card.dart';
import 'package:app/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/blocs/index_screen_bloc.dart';
import '../../others/strings.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        BlocProvider.of<IndexScreenCubit>(context, listen: false).state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          title: Strings.aboutMe,
          subTitle: '${controller.aboutMeParagraph}',
          center: false,
          subTitleLarge: false,
          bottomSpace: 38,
          titleSubTitleMidSpace: 38,
        ),
        const CustomTitle(
          title: Strings.workExperience,
          center: false,
          onlyTitle: true,
          bottomSpace: 38,
          titleSubTitleMidSpace: 38,
        ),
        ...controller.experiences!.map(
          (e) => CustomCompanyInfoCard(
            title: e.title!,
            subTitle: e.subTitle!,
            location: e.location!,
            employmentType: e.employmentType!,
            startEndDate: e.startEndDate!,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomTitle(
          title: Strings.education,
          center: false,
          onlyTitle: true,
          bottomSpace: 38,
          titleSubTitleMidSpace: 38,
        ),
        ...controller.education!.map(
          (e) => CustomCompanyInfoCard(
            title: e.title!,
            subTitle: e.subTitle!,
            location: e.location!,
            employmentType: e.employmentType!,
            startEndDate: e.startEndDate!,
          ),
        ),
        const SizedBox(
          height: 206,
        ),
      ],
    );
  }
}
