import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/corporation.dart';

part 'address.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  includeIfNull: true,
  explicitToJson: true,
  checked: true,
)
class Address {
  final String jisx0402;
  final String oldCode;
  final String postalCode;
  final String prefecture;
  final String prefectureKana;
  final String city;
  final String cityKana;
  final String town;
  final String townKana;
  final String townRaw;
  final String townKanaRaw;
  final String koaza;
  final String kyotoStreet;
  final String building;
  final String floor;
  final bool townPartial;
  final bool townAddressedKoaza;
  final bool townMulti;
  final bool townChome;
  final Corporation? corporation;

  const Address({
    required this.jisx0402,
    required this.oldCode,
    required this.postalCode,
    required this.prefecture,
    required this.prefectureKana,
    required this.city,
    required this.cityKana,
    required this.town,
    required this.townKana,
    required this.townRaw,
    required this.townKanaRaw,
    required this.koaza,
    required this.kyotoStreet,
    required this.building,
    required this.floor,
    required this.townPartial,
    required this.townAddressedKoaza,
    required this.townMulti,
    required this.townChome,
    required this.corporation,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
