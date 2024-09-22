import 'package:easevents_app/exports.dart';
import 'package:easevents_app/models/vendor_model.dart';
import 'package:easevents_app/services/vendor_service.dart';

class VendorProvider with ChangeNotifier {
  List<Vendor> vendorList = [];

  Future<void> fetchVendors() async {
    vendorList = await VendorService().fetchVendors();
    notifyListeners();
  }
}
