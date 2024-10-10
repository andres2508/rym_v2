import 'package:rym_v2/styles/responsive/text_responsive.provider.dart';

class MobileTextStyle implements TextDimensionStyle {
  static const double titleSize = 20.0;
  static const double subtitle1Size = 19.0;
  static const double subtitle2Size = 17.0;
  static const double normalSize = 14.0;
  static const double minimalSize = 13.0;

  @override
  double minimal() => minimalSize;

  @override
  double normal() => normalSize;

  @override
  double subtitle1() => subtitle1Size;

  @override
  double subtitle2() => subtitle2Size;

  @override
  double title() => titleSize;
}
