import 'dart:ui';

import 'package:rym_v2/framework/provider/base.view.model.dart';

class CIATLocalizationViewModel extends BaseViewModel {
  Locale _current = const Locale('es');

  Locale get current => _current;

  void changeToSpanish() {
    _current = const Locale('es');
    notifyUI();
    notifyListeners();
  }

  void changeToEnglish() {
    _current = const Locale('en');
    notifyUI();
    notifyListeners();
  }
}
