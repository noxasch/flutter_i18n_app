import 'package:def_i18n/widgets/flag_widget.dart';
import 'package:def_i18n/widgets/locale_picker.dart';

import '../common.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('i18n  App'),
        actions: const [
          LocalePicker(),
          SizedBox(width: 12.0,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlagWidget(),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: const TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),
      ),
      );
  }
}