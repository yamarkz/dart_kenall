import 'package:dart_kenall/src/model/houjinbangou.dart';

class GetHoujinBangouResponse {
  final String version;
  final Houjinbangou houjinbangou;

  const GetHoujinBangouResponse({
    required this.version,
    required this.houjinbangou,
  });

  factory GetHoujinBangouResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return GetHoujinBangouResponse(
      version: json['version'] as String,
      houjinbangou: Houjinbangou.fromJson(data),
    );
  }
}
