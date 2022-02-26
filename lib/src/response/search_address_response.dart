import 'package:dart_kenall/src/model/query.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/address.dart';

part 'search_address_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class SearchAddressResponse {
  final String version;
  final Query query;
  final int count;
  final int offset;
  final int limit;
  @JsonKey(name: 'data')
  final List<Address> addresses;

  const SearchAddressResponse({
    required this.version,
    required this.query,
    required this.count,
    required this.offset,
    required this.limit,
    required this.addresses,
  });

  factory SearchAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchAddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAddressResponseToJson(this);
}
