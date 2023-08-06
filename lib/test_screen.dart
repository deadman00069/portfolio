import 'package:flutter/material.dart';
import 'package:unique_portfolio/unique_portfolio.dart' as uu;

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        uu.UniquePortFolio(),
      ],
    );
  }
}
