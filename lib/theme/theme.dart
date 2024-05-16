import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.black,
          fontFamily: "SFPro",
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: AppColors.black,
          fontFamily: "SFPro",
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: AppColors.black,
          fontFamily: "SFPro",
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: AppColors.black,
          fontFamily: "SFPro",
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
            fontFamily: "SFPro",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.black),
        titleSmall: TextStyle(
            fontFamily: "SFPro",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.greyText),
        bodyMedium: TextStyle(
            fontFamily: "SFPro",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.greyText),
        bodyLarge: TextStyle(
          color: AppColors.greyText,
          fontFamily: "SFPro",
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ));

  final darkTheme = ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.white,
          fontFamily: "SFPro",
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: AppColors.white,
          fontFamily: "SFPro",
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: AppColors.white,
          fontFamily: "SFPro",
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: AppColors.white,
          fontFamily: "SFPro",
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: AppColors.white,
          fontFamily: "SFPro",
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
            fontFamily: "SFPro",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.white),
        titleSmall: TextStyle(
            fontFamily: "SFPro",
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
        bodyMedium: TextStyle(
            fontFamily: "SFPro",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.grey),
      ));
}
