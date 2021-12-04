import 'package:dart_kenall/src/model/remote_addr.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_whoami_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class GetWhoamiResponse {
  final RemoteAddr remoteAddr;

  const GetWhoamiResponse({
    required this.remoteAddr,
  });

  factory GetWhoamiResponse.fromJson(Map<String, dynamic> json) =>
      _$GetWhoamiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetWhoamiResponseToJson(this);
}
