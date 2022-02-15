import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class AppTextStyle {
  static final _title = GoogleFonts.openSans(
    color: AppColors.titleColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final _subtitle = GoogleFonts.openSans(
    color: AppColors.titleColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static final _titleCard = GoogleFonts.openSans(
    color: AppColors.titleColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final _body = GoogleFonts.openSans(
    color: AppColors.subtitleColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final appTextTheme = TextTheme(
    headline6: _title,
    subtitle1: _titleCard,
    subtitle2: _subtitle,
    caption: _body,
  );
}
