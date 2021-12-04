import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
)
class City {
  final String jisx0402;
  final String prefectureCode;
  final String cityCode;
  final String prefectureKana;
  final String cityKana;
  final String prefecture;
  final String city;

  const City({
    required this.jisx0402,
    required this.prefectureCode,
    required this.cityCode,
    required this.prefectureKana,
    required this.cityKana,
    required this.prefecture,
    required this.city,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
