class EvConsumerApiEndpoints {
  static const String baseUrl =
      'https://consumer-api.easevents.app/api/v1/browse';

  static const String _filterListEndpoint = '/filter';
  static const String _vendorListEndpoint = '/vendor';
  static const String _itemListEndpoint = '/item';

  static String get filterListEndpoint => _filterListEndpoint;
  static String get vendorListEndpoint => _vendorListEndpoint;
  static String get itemListEndpoint => _itemListEndpoint;
}
