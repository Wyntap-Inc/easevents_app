import 'package:easevents_app/exports.dart';

class BeautifyDebug {
  static void beautifyDebugData(Object object) {
    final String stringObject =
        const JsonEncoder.withIndent('  ').convert(object);
    debugPrint(stringObject);
  }
}
