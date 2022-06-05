import 'package:def_i18n/common.dart';
import 'package:def_i18n/l10n/l10n.dart';

class FlagWidget extends StatelessWidget {
  const FlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: const TextStyle(fontSize: 80),
        ),
      ),
    );
  }
}
