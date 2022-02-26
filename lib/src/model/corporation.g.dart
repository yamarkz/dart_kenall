// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corporation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Corporation _$CorporationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Corporation',
      json,
      ($checkedConvert) {
        final val = Corporation(
          name: $checkedConvert('name', (v) => v as String),
          nameKana: $checkedConvert('name_kana', (v) => v as String),
          blockLot: $checkedConvert('block_lot', (v) => v as String),
          blockLotNum: $checkedConvert('block_lot_num', (v) => v as String?),
          postOffice: $checkedConvert('post_office', (v) => v as String),
          codeType: $checkedConvert('code_type', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'nameKana': 'name_kana',
        'blockLot': 'block_lot',
        'blockLotNum': 'block_lot_num',
        'postOffice': 'post_office',
        'codeType': 'code_type'
      },
    );

Map<String, dynamic> _$CorporationToJson(Corporation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'name_kana': instance.nameKana,
      'block_lot': instance.blockLot,
      'block_lot_num': instance.blockLotNum,
      'post_office': instance.postOffice,
      'code_type': instance.codeType,
    };
