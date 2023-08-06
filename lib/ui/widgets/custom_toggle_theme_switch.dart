import 'package:flutter/material.dart';

class CustomToggleThemeSwitch extends StatefulWidget {
  final void Function(bool isToggled) onToggled;

  const CustomToggleThemeSwitch({super.key, required this.onToggled});

  @override
  State<CustomToggleThemeSwitch> createState() =>
      _CustomToggleThemeSwitchState();
}

class _CustomToggleThemeSwitchState extends State<CustomToggleThemeSwitch> {
  bool isToggled = false;

  double size = 30;

  double innerPadding = 0;

  @override
  void initState() {
    innerPadding = size / 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      onPanEnd: (b) {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      child: AnimatedContainer(
          height: size,
          width: size * 2,
          padding: EdgeInsets.all(innerPadding),
          alignment: isToggled ? Alignment.centerLeft : Alignment.centerRight,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isToggled ? Colors.black87 : Colors.white38,
            border: Border.all(
              color: Colors.black54,
            ),
          ),
          child: isToggled
              ? Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.dark_mode,
                    size: size - innerPadding * 2,
                    color: Colors.black,
                  ),
                )
              : Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.light_mode_outlined,
                    size: size - innerPadding * 2,
                    color: Colors.yellow,
                  ),
                )

          // SvgPicture.asset(
          //   'svg/github.svg',
          //   width: size - innerPadding * 2,
          //   height: size - innerPadding * 2,
          // ),

          // Container(
          //   width: size - innerPadding * 2,
          //   height: size - innerPadding * 2,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: isToggled ? Colors.blue.shade600 : Colors.grey.shade500,
          //   ),
          // ),
          ),
    );
  }
}
