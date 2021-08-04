import 'package:dart_kenall/src/model/address.dart';

class GetAddressResponse {
  final String version;
  final List<Address> addresses;

  const GetAddressResponse({
    required this.version,
    required this.addresses,
  });

  factory GetAddressResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as List<dynamic>;
    return GetAddressResponse(
      version: json['version'] as String,
      addresses: data.map((data) => Address.fromJson(data)).toList(),
    );
  }
}
