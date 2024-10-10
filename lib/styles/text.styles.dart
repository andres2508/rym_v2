import 'package:flutter/material.dart';
import 'package:rym_v2/styles/responsive/text_responsive.provider.dart';

class TextStyles {
  // Params default for styles
  static double titleSize = TextStyleProvider.instance.style.title();
  static double subtitle1Size = TextStyleProvider.instance.style.subtitle1();
  static double subtitle2Size = TextStyleProvider.instance.style.subtitle2();
  static double normalSize = TextStyleProvider.instance.style.normal();
  static double minimalSize = TextStyleProvider.instance.style.minimal();

  static TextStyle white =
      TextStyle(fontSize: TextStyles.normalSize, color: Colors.white);
  static TextStyle blackTitle =
      TextStyle(fontSize: TextStyles.titleSize, fontWeight: FontWeight.w900);
  static TextStyle whiteTitle = TextStyle(
      fontSize: TextStyles.titleSize,
      fontWeight: FontWeight.bold,
      color: Colors.white);
  static TextStyle blackSubtitle =
      TextStyle(fontSize: TextStyles.titleSize, fontWeight: FontWeight.bold);
  static TextStyle normalStyle = TextStyle(fontSize: TextStyles.normalSize);
  static TextStyle buttonStyle = TextStyle(
      fontSize: TextStyles.normalSize,
      fontWeight: FontWeight.w500,
      color: Colors.white);
  static TextStyle errorStyle = TextStyle(
      color: Colors.red,
      fontSize: TextStyles.minimalSize,
      fontWeight: FontWeight.bold);
}
