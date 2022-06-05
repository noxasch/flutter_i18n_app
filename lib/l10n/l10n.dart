
import 'package:def_i18n/common.dart';

class L10n {
  static const Map<String, String> flags = {
    'ar': '🇸🇩',
    'en': '🇺🇸',
    'de': '🇩🇪',
    'ja':'🇯🇵',
    'hi':'🇮🇳',
    'es':'🇪🇸',
  };
  
  static String getFlag(String localeCode) {
    String? flag = L10n.flags[localeCode];
    if (flag != null) return flag;
    return '🇺🇸';
  }
}
