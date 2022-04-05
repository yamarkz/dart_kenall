import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/holiday.dart';

part 'get_holidays_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class GetHolidaysResponse {
  @JsonKey(name: 'data')
  final List<Holiday> holidays;

  const GetHolidaysResponse({
    required this.holidays,
  });

  factory GetHolidaysResponse.fromJson(Map<String, dynamic> json) =>
      _$GetHolidaysResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetHolidaysResponseToJson(this);
}
