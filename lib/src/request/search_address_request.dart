import 'package:dart_kenall/src/request/request_base.dart';

class SearchAddressRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, String> get parameters => {
        'q': query,
        'offset': offset.toString(),
        'limit': limit.toString(),
        'facet': facet,
      };

  @override
  String get path => '/postalcode/';

  @override
  bool get isBeta => true;

  final String query;
  final int offset;
  final int limit;
  final String facet;

  SearchAddressRequest({
    required this.query,
    this.offset = 0,
    this.limit = 50,
    this.facet = '',
  });
}
