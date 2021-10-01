import 'package:dart_kenall/src/model/houjinbangou.dart';

class SearchHoujinbangou {
  final String version;
  final String query;
  final int count;
  final int offset;
  final int limit;
  final List<Houjinbangou> houjinbangous;

  const SearchHoujinbangou({
    required this.version,
    required this.query,
    required this.count,
    required this.offset,
    required this.limit,
    required this.houjinbangous,
  });

  factory SearchHoujinbangou.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as List<dynamic>;
    return SearchHoujinbangou(
      version: json['version'] as String,
      query: json['query'] as String,
      count: json['count'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      houjinbangous: data.map((data) => Houjinbangou.fromJson(data)).toList(),
    );
  }
}
