import 'package:dart_kenall/src/model/corporation.dart';

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

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      jisx0402: json['jisx0402'] as String,
      oldCode: json['old_code'] as String,
      postalCode: json['postal_code'] as String,
      prefecture: json['prefecture'] as String,
      prefectureKana: json['prefecture_kana'] as String,
      city: json['city'] as String,
      cityKana: json['city_kana'] as String,
      town: json['town'] as String,
      townKana: json['town_kana'] as String,
      townRaw: json['town_raw'] as String,
      townKanaRaw: json['town_kana_raw'] as String,
      koaza: json['koaza'] as String,
      kyotoStreet: json['kyoto_street'] as String,
      building: json['building'] as String,
      floor: json['floor'] as String,
      townPartial: json['town_partial'] as bool,
      townAddressedKoaza: json['town_addressed_koaza'] as bool,
      townMulti: json['town_multi'] as bool,
      townChome: json['town_chome'] as bool,
      corporation: json['corporation'] != null
          ? Corporation.fromJson(json['corporation'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'jisx0402': jisx0402,
      'old_code': oldCode,
      'postal_code': postalCode,
      'prefecture': prefecture,
      'prefecture_kana': prefectureKana,
      'city': city,
      'city_kana': cityKana,
      'town': town,
      'town_kana': townKana,
      'town_raw': townRaw,
      'town_kana_raw': townKanaRaw,
      'koaza': koaza,
      'kyoto_street': kyotoStreet,
      'building': building,
      'floor': floor,
      'town_partial': townPartial,
      'town_addressed_koaza': townAddressedKoaza,
      'town_multi': townMulti,
      'town_chome': townChome,
      'corporation': corporation != null ? corporation!.toJson() : null,
    };
  }
}
