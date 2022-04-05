import 'package:json_annotation/json_annotation.dart';

part 'holiday.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
)
class Holiday {
  final String title;
  final String date;
  final int dayOfWeek;
  final String dayOfWeekText;

  const Holiday({
    required this.title,
    required this.date,
    required this.dayOfWeek,
    required this.dayOfWeekText,
  });

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayToJson(this);
}
