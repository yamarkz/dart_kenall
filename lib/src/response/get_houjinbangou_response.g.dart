// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_houjinbangou_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHoujinBangouResponse _$GetHoujinBangouResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetHoujinBangouResponse',
      json,
      ($checkedConvert) {
        final val = GetHoujinBangouResponse(
          version: $checkedConvert('version', (v) => v as String),
          houjinbangou: $checkedConvert(
              'data', (v) => Houjinbangou.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'houjinbangou': 'data'},
    );

Map<String, dynamic> _$GetHoujinBangouResponseToJson(
        GetHoujinBangouResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'data': instance.houjinbangou.toJson(),
    };
