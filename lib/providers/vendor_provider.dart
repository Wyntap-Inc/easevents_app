import 'package:easevents_app/exports.dart';

class VendorProvider with ChangeNotifier {
  List<Vendor> vendorList = [];

  Future<void> fetchVendors() async {
    vendorList = await VendorService().fetchVendors();
    notifyListeners();
  }
}
