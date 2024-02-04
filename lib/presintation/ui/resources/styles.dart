import 'package:bookstory/presintation/ui/resources/colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle splashStyle() => TextStyle(
        fontSize: 27,
        color: AppColors.welcomeColor,
        fontWeight: FontWeight.w600,
        fontFamily: 'Main',
      );
}
