import 'package:dart_kenall/src/model/address.dart';

class SearchAddressResponse {
  final String version;
  final String query;
  final int count;
  final int offset;
  final int limit;
  final List<Address> addresses;

  const SearchAddressResponse({
    required this.version,
    required this.query,
    required this.count,
    required this.offset,
    required this.limit,
    required this.addresses,
  });

  factory SearchAddressResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as List<dynamic>;
    return SearchAddressResponse(
      version: json['version'] as String,
      query: json['query'] as String,
      count: json['count'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      addresses: data.map((data) => Address.fromJson(data)).toList(),
    );
  }
}
