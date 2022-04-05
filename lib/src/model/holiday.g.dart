// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Holiday _$HolidayFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Holiday',
      json,
      ($checkedConvert) {
        final val = Holiday(
          title: $checkedConvert('title', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          dayOfWeek: $checkedConvert('day_of_week', (v) => v as int),
          dayOfWeekText:
              $checkedConvert('day_of_week_text', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'dayOfWeek': 'day_of_week',
        'dayOfWeekText': 'day_of_week_text'
      },
    );

Map<String, dynamic> _$HolidayToJson(Holiday instance) => <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'day_of_week': instance.dayOfWeek,
      'day_of_week_text': instance.dayOfWeekText,
    };
