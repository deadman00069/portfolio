import 'dart:math';

import 'package:app/data/models/PortfolioModel.dart';
import 'package:app/others/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/theme_bloc.dart';
import '../../theme/colors.dart';
import 'custom_github_url_card.dart';
import 'custom_live_preview_card.dart';

class CustomProjectCard extends StatefulWidget {
  final Projects project;

  const CustomProjectCard({super.key, required this.project});

  @override
  State<CustomProjectCard> createState() => _CustomProjectCardState();
}

class _CustomProjectCardState extends State<CustomProjectCard> {
  double top = 10;
  final number = Random().nextInt(10) + 1;



  @override
  Widget build(BuildContext context) {
    final theme =
        BlocProvider.of<ThemeBloc>(context, listen: false).getThemeMode;
    return MouseRegion(
      onEnter: (v) {
        top = 0;
        setState(() {});
      },
      onExit: (v) {
        top = 10;
        setState(() {});
      },
      child: SizedBox(
        width: 375,
        height: 650,
        child: Stack(children: [
          AnimatedPositioned(
            top: top,
            duration: Duration(milliseconds: 200),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Container(
                width: 375,
                height: 600,
                decoration: BoxDecoration(
                  color: theme == ThemeMode.dark
                      ? AppColors.color363636
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/images/img$number.jpg',
                        height: 260,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 31),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 80,
                            child: Text(
                              widget.project.title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    color: theme == ThemeMode.dark
                                        ? AppColors.colorCCCCCC
                                        : Colors.black,
                                  ),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          SizedBox(
                            height: 100,
                            child: Text(
                              widget.project.description!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: theme == ThemeMode.dark
                                        ? AppColors.colorCCCCCC
                                        : AppColors.color666666,
                                    fontWeight: FontWeight.w300,
                                  ),
                              textAlign: TextAlign.start,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 40,
                            child: RichText(
                              maxLines: 2,
                              text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: theme == ThemeMode.dark
                                          ? AppColors.colorCCCCCC
                                          : AppColors.color42446E,
                                    ),
                                text: 'Tech stack : ',
                                children: [
                                  TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: theme == ThemeMode.dark
                                              ? AppColors.colorCCCCCC
                                              : AppColors.color42446E,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    text: widget.project.techStack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: widget.project.livePreviewUrl == null
                                    ? false
                                    : true,
                                child: CustomLivePreviewCard(
                                  onPress: () {
                                    if (widget.project.livePreviewUrl != null) {
                                      Utils.launchHttpUrl(
                                          widget.project.livePreviewUrl!);
                                    }
                                  },
                                ),
                              ),
                              Visibility(
                                visible: widget.project.githubCodeUrl == null
                                    ? false
                                    : true,
                                child: CustomGithubUrlCard(
                                  onClick: () {
                                    if (widget.project.githubCodeUrl != null) {
                                      Utils.launchHttpUrl(
                                          widget.project.githubCodeUrl!);
                                    }
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
