import 'package:flutter/material.dart';

class CustomNavItem extends StatelessWidget {
  final String name;
  final VoidCallback? onPress;

  const CustomNavItem({super.key, required this.name, this.onPress});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onPress?.call();
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
