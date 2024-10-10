import 'package:rym_v2/styles/responsive/mobile_text.style.dart';
import 'package:rym_v2/styles/responsive/tablet_text.style.dart';

abstract class TextDimensionStyle {
  double title();

  double subtitle1();

  double subtitle2();

  double normal();

  double minimal();
}

class TextStyleProvider {
  static final TextStyleProvider instance = TextStyleProvider._intern();
  TextDimensionStyle _current = TabletTextStyle();

  TextStyleProvider._intern();

  TextDimensionStyle get style => _current;

  void changeToTablet() => _current = TabletTextStyle();

  void changeToMobile() => _current = MobileTextStyle();
}
