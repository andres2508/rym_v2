import 'package:rym_v2/styles/responsive/text_responsive.provider.dart';

class TabletTextStyle implements TextDimensionStyle {
  static const double titleSize = 24.0;
  static const double subtitle1Size = 22.0;
  static const double subtitle2Size = 20.0;
  static const double normalSize = 18.0;
  static const double minimalSize = 16.0;

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
