// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_houjinbangou_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHoujinbangouResponse _$SearchHoujinbangouResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchHoujinbangouResponse',
      json,
      ($checkedConvert) {
        final val = SearchHoujinbangouResponse(
          version: $checkedConvert('version', (v) => v as String),
          query: $checkedConvert('query', (v) => v as String),
          count: $checkedConvert('count', (v) => v as int),
          offset: $checkedConvert('offset', (v) => v as int),
          limit: $checkedConvert('limit', (v) => v as int),
          houjinbangous: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Houjinbangou.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'houjinbangous': 'data'},
    );

Map<String, dynamic> _$SearchHoujinbangouResponseToJson(
        SearchHoujinbangouResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'query': instance.query,
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
      'data': instance.houjinbangous.map((e) => e.toJson()).toList(),
    };
