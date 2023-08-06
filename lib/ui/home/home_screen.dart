import 'package:app/ui/home/screen_size/home_screen_large.dart';
import 'package:app/ui/responsiveness.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: HomeScreenLarge(),
        smallScreen: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
