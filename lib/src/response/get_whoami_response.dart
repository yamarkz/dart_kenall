class GetWhoamiResponse {
  final String type;
  final String address;

  const GetWhoamiResponse({
    required this.type,
    required this.address,
  });

  factory GetWhoamiResponse.fromJson(Map<String, dynamic> json) {
    return GetWhoamiResponse(
      type: json['remote_addr']['type'] as String,
      address: json['remote_addr']['address'] as String,
    );
  }
}
