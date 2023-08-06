import 'package:app/data/models/PortfolioModel.dart';
import 'package:app/ui/index/widgets/bottom_nav.dart';
import 'package:app/ui/index/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/blocs/index_screen_bloc.dart';
import '../about/about_screen.dart';
import '../home/screen_size/home_screen_large.dart';
import '../projects/project_screen.dart';
import '../tech_stack/tech_stack_screen.dart';
import '../widgets/custom_toggle_theme_switch.dart';

class IndexScreen extends StatefulWidget {
  final PortfolioModel model;

  const IndexScreen({super.key, required this.model});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  void initState() {
    BlocProvider.of<IndexScreenCubit>(context, listen: false)
        .setPortfolioModel(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cc = BlocProvider.of<IndexScreenCubit>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///
            ///
            TopNavBar(
              key: cc.gKeys[0],
              gKeys: cc.gKeys,
            ),
            const SizedBox(
              height: 220,
            ),
            const HomeScreenLarge(),
            AboutScreen(
              key: cc.gKeys[1],
            ),
            TechStackScreen(
              key: cc.gKeys[2],
            ),
            ProjectScreen(
              key: cc.gKeys[3],
            ),
            const SizedBox(
              height: 225,
            ),
            BottomNav(
              key: cc.gKeys[4],
            ),
          ],
        ),
      ),
    );
  }
}
