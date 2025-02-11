import 'package:easevents_app/exports.dart';

class VendorProvider with ChangeNotifier {
  List<Data> _vendorList = [];
  String? _errorMessage;
  bool _isLoading = false;

  List<Data> get vendorList => _vendorList;
  String? get errorMessage => _errorMessage;
  bool get isLoading => _isLoading;

  Future<void> getVendorsFromService() async {
    _isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(const Duration(seconds: 2));

      _vendorList = await BrowseFilterService().fetchVendorsListData();
    } catch (error) {
      debugPrint('Error Fetching Data $error');
    }

    _isLoading = false;
    notifyListeners();
  }
}
