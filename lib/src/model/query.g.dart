// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query _$QueryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Query',
      json,
      ($checkedConvert) {
        final val = Query(
          q: $checkedConvert('q', (v) => v as String?),
          t: $checkedConvert('t', (v) => v as String?),
          prefecture: $checkedConvert('prefecture', (v) => v as String?),
          county: $checkedConvert('county', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          cityWard: $checkedConvert('city_ward', (v) => v as String?),
          town: $checkedConvert('town', (v) => v as String?),
          kyotoStreet: $checkedConvert('kyoto_street', (v) => v as String?),
          blockLotNum: $checkedConvert('block_lot_num', (v) => v as String?),
          building: $checkedConvert('building', (v) => v as String?),
          floorRoom: $checkedConvert('floor_room', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'cityWard': 'city_ward',
        'kyotoStreet': 'kyoto_street',
        'blockLotNum': 'block_lot_num',
        'floorRoom': 'floor_room'
      },
    );

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'q': instance.q,
      't': instance.t,
      'prefecture': instance.prefecture,
      'county': instance.county,
      'city': instance.city,
      'city_ward': instance.cityWard,
      'town': instance.town,
      'kyoto_street': instance.kyotoStreet,
      'block_lot_num': instance.blockLotNum,
      'building': instance.building,
      'floor_room': instance.floorRoom,
    };
