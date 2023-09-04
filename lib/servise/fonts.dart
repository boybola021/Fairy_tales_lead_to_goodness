
import 'dart:ui';

import 'color.dart';

abstract class CustomFonts{
  static const inter = "Inter";
  static const playfairDisplay = "PlayfairDisplay";
}


 class CustomTextStyle{
  CustomTextStyle._();
  static TextStyle customStyle({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w500,
    Color color = CustomColors.black30,
    String fontFamily = CustomFonts.inter,
    double height = 1,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      height: height,
      color: color,
    );
  }
}
