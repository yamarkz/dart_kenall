// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => $checkedCreate(
      'City',
      json,
      ($checkedConvert) {
        final val = City(
          jisx0402: $checkedConvert('jisx0402', (v) => v as String),
          prefectureCode:
              $checkedConvert('prefecture_code', (v) => v as String),
          cityCode: $checkedConvert('city_code', (v) => v as String),
          prefectureKana:
              $checkedConvert('prefecture_kana', (v) => v as String),
          cityKana: $checkedConvert('city_kana', (v) => v as String),
          prefecture: $checkedConvert('prefecture', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'prefectureCode': 'prefecture_code',
        'cityCode': 'city_code',
        'prefectureKana': 'prefecture_kana',
        'cityKana': 'city_kana'
      },
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'jisx0402': instance.jisx0402,
      'prefecture_code': instance.prefectureCode,
      'city_code': instance.cityCode,
      'prefecture_kana': instance.prefectureKana,
      'city_kana': instance.cityKana,
      'prefecture': instance.prefecture,
      'city': instance.city,
    };
