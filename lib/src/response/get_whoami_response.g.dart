// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_whoami_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWhoamiResponse _$GetWhoamiResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GetWhoamiResponse',
      json,
      ($checkedConvert) {
        final val = GetWhoamiResponse(
          remoteAddr: $checkedConvert('remote_addr',
              (v) => RemoteAddr.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'remoteAddr': 'remote_addr'},
    );

Map<String, dynamic> _$GetWhoamiResponseToJson(GetWhoamiResponse instance) =>
    <String, dynamic>{
      'remote_addr': instance.remoteAddr.toJson(),
    };
