import 'package:json_annotation/json_annotation.dart';

part 'corporation.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
)
class Corporation {
  final String name;
  final String nameKana;
  final String blockLot;
  final String? blockLotNum;
  final String postOffice;
  final int codeType;

  const Corporation({
    required this.name,
    required this.nameKana,
    required this.blockLot,
    required this.blockLotNum,
    required this.postOffice,
    required this.codeType,
  });

  factory Corporation.fromJson(Map<String, dynamic> json) =>
      _$CorporationFromJson(json);

  Map<String, dynamic> toJson() => _$CorporationToJson(this);
}
