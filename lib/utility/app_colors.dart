import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFDA1884);
  static const Color background = Color(0xFF0B0210);
  static const Color cardBackground = Color(0xFF130B18);
  static const Color textColor = Colors.white;
}

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle subheading = TextStyle(
    fontSize: 12,
    color: AppColors.textColor,
  );

  static const TextStyle buttonText = TextStyle(

    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );
}
