import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/houjinbangou.dart';

part 'get_houjinbangou_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class GetHoujinBangouResponse {
  final String version;
  @JsonKey(name: 'data')
  final Houjinbangou houjinbangou;

  const GetHoujinBangouResponse({
    required this.version,
    required this.houjinbangou,
  });

  factory GetHoujinBangouResponse.fromJson(Map<String, dynamic> json) =>
      _$GetHoujinBangouResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetHoujinBangouResponseToJson(this);
}
