// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressResponse _$GetAddressResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GetAddressResponse',
      json,
      ($checkedConvert) {
        final val = GetAddressResponse(
          version: $checkedConvert('version', (v) => v as String),
          addresses: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Address.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'addresses': 'data'},
    );

Map<String, dynamic> _$GetAddressResponseToJson(GetAddressResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'data': instance.addresses.map((e) => e.toJson()).toList(),
    };
