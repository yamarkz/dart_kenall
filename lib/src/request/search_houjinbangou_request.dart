import 'package:dart_kenall/src/request/request_base.dart';

class SearchHoujinbangouRequest implements RequestBase {
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
  String get path => '/houjinbangou';

  @override
  bool get isBeta => false;

  final String query;
  final int offset;
  final int limit;
  final String facet;

  SearchHoujinbangouRequest({
    required this.query,
    this.offset = 0,
    this.limit = 50,
    this.facet = '',
  });
}
