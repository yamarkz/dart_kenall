import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/address.dart';

part 'get_address_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class GetAddressResponse {
  final String version;
  @JsonKey(name: 'data')
  final List<Address> addresses;

  const GetAddressResponse({
    required this.version,
    required this.addresses,
  });

  factory GetAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressResponseToJson(this);
}
