import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/houjinbangou.dart';

part 'search_houjinbangou_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class SearchHoujinbangouResponse {
  final String version;
  final String query;
  final int count;
  final int offset;
  final int limit;
  @JsonKey(name: 'data')
  final List<Houjinbangou> houjinbangous;

  const SearchHoujinbangouResponse({
    required this.version,
    required this.query,
    required this.count,
    required this.offset,
    required this.limit,
    required this.houjinbangous,
  });

  factory SearchHoujinbangouResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchHoujinbangouResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchHoujinbangouResponseToJson(this);
}
