import 'package:def_i18n/common.dart';
import 'package:def_i18n/l10n/l10n.dart';
import 'package:def_i18n/state/locale_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

class LocalePicker extends ConsumerWidget {
  const LocalePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        icon: Container(width: 12.0),
        items: AppLocalizations.supportedLocales.map((locale) {
          final String flag = L10n.getFlag(locale.languageCode);

          return DropdownMenuItem<Locale>(
            value: locale,
            child: Center(
              child: Text(
                flag,
                style: const TextStyle(fontSize: 32),
              ),
            ),
          );
        }).toList(), 
        onChanged: (Locale? locale) {
          if (locale != null) ref.read(localeStateProvider.notifier).setLocale(locale);
        })
    );
  }
}