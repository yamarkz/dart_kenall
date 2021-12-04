// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Address',
      json,
      ($checkedConvert) {
        final val = Address(
          jisx0402: $checkedConvert('jisx0402', (v) => v as String),
          oldCode: $checkedConvert('old_code', (v) => v as String),
          postalCode: $checkedConvert('postal_code', (v) => v as String),
          prefecture: $checkedConvert('prefecture', (v) => v as String),
          prefectureKana:
              $checkedConvert('prefecture_kana', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
          cityKana: $checkedConvert('city_kana', (v) => v as String),
          town: $checkedConvert('town', (v) => v as String),
          townKana: $checkedConvert('town_kana', (v) => v as String),
          townRaw: $checkedConvert('town_raw', (v) => v as String),
          townKanaRaw: $checkedConvert('town_kana_raw', (v) => v as String),
          koaza: $checkedConvert('koaza', (v) => v as String),
          kyotoStreet: $checkedConvert('kyoto_street', (v) => v as String),
          building: $checkedConvert('building', (v) => v as String),
          floor: $checkedConvert('floor', (v) => v as String),
          townPartial: $checkedConvert('town_partial', (v) => v as bool),
          townAddressedKoaza:
              $checkedConvert('town_addressed_koaza', (v) => v as bool),
          townMulti: $checkedConvert('town_multi', (v) => v as bool),
          townChome: $checkedConvert('town_chome', (v) => v as bool),
          corporation: $checkedConvert(
              'corporation',
              (v) => v == null
                  ? null
                  : Corporation.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'oldCode': 'old_code',
        'postalCode': 'postal_code',
        'prefectureKana': 'prefecture_kana',
        'cityKana': 'city_kana',
        'townKana': 'town_kana',
        'townRaw': 'town_raw',
        'townKanaRaw': 'town_kana_raw',
        'kyotoStreet': 'kyoto_street',
        'townPartial': 'town_partial',
        'townAddressedKoaza': 'town_addressed_koaza',
        'townMulti': 'town_multi',
        'townChome': 'town_chome'
      },
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'jisx0402': instance.jisx0402,
      'old_code': instance.oldCode,
      'postal_code': instance.postalCode,
      'prefecture': instance.prefecture,
      'prefecture_kana': instance.prefectureKana,
      'city': instance.city,
      'city_kana': instance.cityKana,
      'town': instance.town,
      'town_kana': instance.townKana,
      'town_raw': instance.townRaw,
      'town_kana_raw': instance.townKanaRaw,
      'koaza': instance.koaza,
      'kyoto_street': instance.kyotoStreet,
      'building': instance.building,
      'floor': instance.floor,
      'town_partial': instance.townPartial,
      'town_addressed_koaza': instance.townAddressedKoaza,
      'town_multi': instance.townMulti,
      'town_chome': instance.townChome,
      'corporation': instance.corporation?.toJson(),
    };
