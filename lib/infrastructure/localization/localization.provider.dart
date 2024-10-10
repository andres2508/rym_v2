import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationProvider {
  AppLocalizations? _loc;

  LocalizationProvider();

  bool get hasLoc => _loc != null;

  AppLocalizations? get loc => _loc;

  update(AppLocalizations loc) {
    _loc = loc;
  }
}
