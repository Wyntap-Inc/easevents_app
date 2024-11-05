import 'package:easevents_app/exports.dart';

class GoogleSigninRedirectURLProvider with ChangeNotifier {
  String? _redirectUrl;

  final GoogleSigninRedirectService googleSigninService =
      GoogleSigninRedirectService();

  String get redirectUrl => _redirectUrl!;

  Future<void> fetchRedirectString() async {
    try {
      String? fetchedString = await googleSigninService.googleSignInService();
      _redirectUrl = fetchedString;
      notifyListeners();
    } catch (error) {
      throw Exception(error);
    }
  }
}
