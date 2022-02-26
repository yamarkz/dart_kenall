import 'package:dart_kenall/src/request/request_base.dart';

class SearchAddressRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, String> get parameters => {
        'q': query,
        't': text,
        'offset': offset.toString(),
        'limit': limit.toString(),
        'facet': facet,
      };

  @override
  String get path => '/postalcode/';

  @override
  bool get isBeta => false;

  final String query;
  final String text;
  final int offset;
  final int limit;
  final String facet;

  SearchAddressRequest({
    this.query = '',
    this.text = '',
    this.offset = 0,
    this.limit = 50,
    this.facet = '',
  }) {
    if (query.isEmpty && text.isEmpty) {
      throw ArgumentError('query and text are empty');
    }
  }
}
