import 'package:easevents_app/exports.dart';

class LoaderProvider with ChangeNotifier {
  bool isLoading = false;

  Future loader() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 2000));

    isLoading = false;
    notifyListeners();
  }
}
