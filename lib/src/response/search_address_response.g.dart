// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAddressResponse _$SearchAddressResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchAddressResponse',
      json,
      ($checkedConvert) {
        final val = SearchAddressResponse(
          version: $checkedConvert('version', (v) => v as String),
          query: $checkedConvert('query', (v) => v as String),
          count: $checkedConvert('count', (v) => v as int),
          offset: $checkedConvert('offset', (v) => v as int),
          limit: $checkedConvert('limit', (v) => v as int),
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

Map<String, dynamic> _$SearchAddressResponseToJson(
        SearchAddressResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'query': instance.query,
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
      'data': instance.addresses.map((e) => e.toJson()).toList(),
    };
