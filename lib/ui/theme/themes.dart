import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'custom_text_style.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      brightness: Brightness.light,
      textTheme: GoogleFonts.dmSansTextTheme(
        TextTheme(
          displayLarge: CustomTextStyleLight.style58700,
          displayMedium: CustomTextStyleLight.style48700,
          headlineLarge: CustomTextStyleLight.style32400,
          headlineMedium: CustomTextStyleLight.style28500,
          headlineSmall: CustomTextStyleLight.style20500,
          titleLarge: CustomTextStyleLight.style18400,
          titleMedium: CustomTextStyleLight.style16400,
          titleSmall: CustomTextStyleLight.style14300,
          bodySmall:CustomTextStyleLight.style12500,
        ),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: AppColors.color191919,
      brightness: Brightness.dark,
      textTheme: GoogleFonts.dmSansTextTheme(
        TextTheme(
          displayLarge: CustomTextStyleLight.style58700.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          displayMedium: CustomTextStyleLight.style48700.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          headlineLarge: CustomTextStyleLight.style32400.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          headlineMedium: CustomTextStyleLight.style28500.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          headlineSmall: CustomTextStyleLight.style20500.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          titleLarge: CustomTextStyleLight.style18400.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          titleMedium: CustomTextStyleLight.style16400.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
          titleSmall: CustomTextStyleLight.style14300.copyWith(
            color: AppColors.colorA7a7a7a7,
          ),
        ),
      ),
    ),
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
