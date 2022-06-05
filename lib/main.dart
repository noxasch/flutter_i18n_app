import 'package:def_i18n/state/locale_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common.dart';
import 'screens/screens.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final Locale? currentLocale = ref.watch(localeStateProvider);

        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: currentLocale,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen()
        );
      },
      // child: MaterialApp(
      //   localizationsDelegates: AppLocalizations.localizationsDelegates,
      //   supportedLocales: AppLocalizations.supportedLocales,
      //   title: 'Flutter Demo',
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //   ),
      //   home: const HomeScreen()
      // ),
    );
  }
}
