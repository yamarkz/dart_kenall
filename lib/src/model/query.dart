import 'package:json_annotation/json_annotation.dart';

part 'query.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
)
class Query {
  final String? q;
  final String? t;
  final String? prefecture;
  final String? county;
  final String? city;
  final String? cityWard;
  final String? town;
  final String? kyotoStreet;
  final String? blockLotNum;
  final String? building;
  final String? floorRoom;

  const Query({
    required this.q,
    required this.t,
    required this.prefecture,
    required this.county,
    required this.city,
    required this.cityWard,
    required this.town,
    required this.kyotoStreet,
    required this.blockLotNum,
    required this.building,
    required this.floorRoom,
  });

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  Map<String, dynamic> toJson() => _$QueryToJson(this);
}
