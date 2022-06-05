import 'package:def_i18n/common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final localeStateProvider = StateNotifierProvider<LocaleState, Locale>((ref) { 
  return LocaleState(const Locale('en')); 
});

class LocaleState extends StateNotifier<Locale> {
  LocaleState(Locale state) : super(const Locale('en'));

  void setLocale(Locale newLocale) {
    if (!AppLocalizations.supportedLocales.contains(newLocale)) return;

    state = newLocale;
  }
}
