// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_holidays_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHolidaysResponse _$GetHolidaysResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GetHolidaysResponse',
      json,
      ($checkedConvert) {
        final val = GetHolidaysResponse(
          holidays: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Holiday.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'holidays': 'data'},
    );

Map<String, dynamic> _$GetHolidaysResponseToJson(
        GetHolidaysResponse instance) =>
    <String, dynamic>{
      'data': instance.holidays.map((e) => e.toJson()).toList(),
    };
