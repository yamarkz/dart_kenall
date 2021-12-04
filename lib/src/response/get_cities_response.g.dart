// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCitiesResponse _$GetCitiesResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GetCitiesResponse',
      json,
      ($checkedConvert) {
        final val = GetCitiesResponse(
          version: $checkedConvert('version', (v) => v as String),
          cities: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => City.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'cities': 'data'},
    );

Map<String, dynamic> _$GetCitiesResponseToJson(GetCitiesResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'data': instance.cities.map((e) => e.toJson()).toList(),
    };
