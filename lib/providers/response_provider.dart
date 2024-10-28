import 'package:easevents_app/exports.dart';

class ResponseProvider with ChangeNotifier {
  String? _myResponse;

  String? get getResponse => _myResponse;

  Future<void> login(String email, String password) async {
    final RequestResponse response = await LoginService().userLogin(
      email,
      password,
    );

    _myResponse = response.statusCode;
    notifyListeners();
  }

  Future<void> register(
    String firstName,
    String lastName,
    String email,
    String password,
  ) async {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
    final RequestResponse response = await RegisterService().userRegistration(
      firstName: firstName,
      lastName: lastName,
      emailAddress: email,
      password: password,
    );

    print(response.statusCode);

    _myResponse = response.statusCode;

    print('MY RESPONSE IN RES PROV $_myResponse');
    notifyListeners();
  }

  void disposeProvider() {
    _myResponse = null;
    notifyListeners();
  }
}
