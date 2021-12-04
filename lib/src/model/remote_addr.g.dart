// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_addr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteAddr _$RemoteAddrFromJson(Map<String, dynamic> json) => $checkedCreate(
      'RemoteAddr',
      json,
      ($checkedConvert) {
        final val = RemoteAddr(
          type: $checkedConvert('type', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$RemoteAddrToJson(RemoteAddr instance) =>
    <String, dynamic>{
      'type': instance.type,
      'address': instance.address,
    };
