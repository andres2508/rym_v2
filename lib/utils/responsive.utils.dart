import 'package:flutter/rendering.dart';

class ResponsiveUtils {
  static bool isTablet(BoxConstraints constraints) {
    return constraints.maxWidth > 600;
  }
}
