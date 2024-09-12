import 'package:flutter/material.dart';

class EVStyles {
  static const Color primaryColor = Color(0xFF0A3C26);
  static const Color primaryLiteColor = Color(0xFF1BA267);
  static const Color primaryWhite = Color(0xFFFFFFFF);
  static const Color backgroundSecondary = Color(0xFFF8F9FB);
  // general text color
  static const Color textPrimary = Color(0xFF484C52);
  //color for subtitle text
  static const Color textSecondary = Color(0xFF919191);
  static const Color enabledBorderSideColor = Color(0xFFD2D2D2);
  static const Color errorBorderSideColor = Color(0xFFFF0000);

  static double getUsableHeight(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    const double appBarHeight = kToolbarHeight;
    final double topPadding = MediaQuery.of(context).padding.top;
    final double bottomPadding = MediaQuery.of(context).padding.bottom;

    final double usableHeight =
        screenHeight - appBarHeight - topPadding - bottomPadding;
    return usableHeight;
  }
}
