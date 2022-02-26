// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'houjinbangou.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Houjinbangou _$HoujinbangouFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Houjinbangou',
      json,
      ($checkedConvert) {
        final val = Houjinbangou(
          publishedDate: $checkedConvert('published_date', (v) => v as String),
          sequenceNumber:
              $checkedConvert('sequence_number', (v) => v as String),
          corporateNumber:
              $checkedConvert('corporate_number', (v) => v as String),
          process: $checkedConvert('process', (v) => v as String),
          correct: $checkedConvert('correct', (v) => v as String),
          updateDate: $checkedConvert('update_date', (v) => v as String),
          changeDate: $checkedConvert('change_date', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          nameImageId: $checkedConvert('name_image_id', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          prefectureName:
              $checkedConvert('prefecture_name', (v) => v as String),
          cityName: $checkedConvert('city_name', (v) => v as String),
          streetNumber: $checkedConvert('street_number', (v) => v as String),
          town: $checkedConvert('town', (v) => v as String?),
          kyotoStreet: $checkedConvert('kyoto_street', (v) => v as String?),
          blockLotNum: $checkedConvert('block_lot_num', (v) => v as String?),
          building: $checkedConvert('building', (v) => v as String?),
          floorRoom: $checkedConvert('floor_room', (v) => v as String?),
          addressImageId:
              $checkedConvert('address_image_id', (v) => v as String?),
          jisx0402: $checkedConvert('jisx0402', (v) => v as String),
          postCode: $checkedConvert('post_code', (v) => v as String),
          addressOutside:
              $checkedConvert('address_outside', (v) => v as String),
          addressOutsideImageId:
              $checkedConvert('address_outside_image_id', (v) => v as String?),
          closeDate: $checkedConvert('close_date', (v) => v as String?),
          closeCause: $checkedConvert('close_cause', (v) => v as String?),
          successorCorporateNumber: $checkedConvert(
              'successor_corporate_number', (v) => v as String?),
          changeCause: $checkedConvert('change_cause', (v) => v as String),
          assignmentDate:
              $checkedConvert('assignment_date', (v) => v as String),
          enName: $checkedConvert('en_name', (v) => v as String),
          enPrefectureName:
              $checkedConvert('en_prefecture_name', (v) => v as String),
          enAddressLine: $checkedConvert('en_address_line', (v) => v as String),
          enAddressOutside:
              $checkedConvert('en_address_outside', (v) => v as String),
          furigana: $checkedConvert('furigana', (v) => v as String),
          hihyoji: $checkedConvert('hihyoji', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'publishedDate': 'published_date',
        'sequenceNumber': 'sequence_number',
        'corporateNumber': 'corporate_number',
        'updateDate': 'update_date',
        'changeDate': 'change_date',
        'nameImageId': 'name_image_id',
        'prefectureName': 'prefecture_name',
        'cityName': 'city_name',
        'streetNumber': 'street_number',
        'kyotoStreet': 'kyoto_street',
        'blockLotNum': 'block_lot_num',
        'floorRoom': 'floor_room',
        'addressImageId': 'address_image_id',
        'postCode': 'post_code',
        'addressOutside': 'address_outside',
        'addressOutsideImageId': 'address_outside_image_id',
        'closeDate': 'close_date',
        'closeCause': 'close_cause',
        'successorCorporateNumber': 'successor_corporate_number',
        'changeCause': 'change_cause',
        'assignmentDate': 'assignment_date',
        'enName': 'en_name',
        'enPrefectureName': 'en_prefecture_name',
        'enAddressLine': 'en_address_line',
        'enAddressOutside': 'en_address_outside'
      },
    );

Map<String, dynamic> _$HoujinbangouToJson(Houjinbangou instance) =>
    <String, dynamic>{
      'published_date': instance.publishedDate,
      'sequence_number': instance.sequenceNumber,
      'corporate_number': instance.corporateNumber,
      'process': instance.process,
      'correct': instance.correct,
      'update_date': instance.updateDate,
      'change_date': instance.changeDate,
      'name': instance.name,
      'name_image_id': instance.nameImageId,
      'kind': instance.kind,
      'prefecture_name': instance.prefectureName,
      'city_name': instance.cityName,
      'street_number': instance.streetNumber,
      'town': instance.town,
      'kyoto_street': instance.kyotoStreet,
      'block_lot_num': instance.blockLotNum,
      'building': instance.building,
      'floor_room': instance.floorRoom,
      'address_image_id': instance.addressImageId,
      'jisx0402': instance.jisx0402,
      'post_code': instance.postCode,
      'address_outside': instance.addressOutside,
      'address_outside_image_id': instance.addressOutsideImageId,
      'close_date': instance.closeDate,
      'close_cause': instance.closeCause,
      'successor_corporate_number': instance.successorCorporateNumber,
      'change_cause': instance.changeCause,
      'assignment_date': instance.assignmentDate,
      'en_name': instance.enName,
      'en_prefecture_name': instance.enPrefectureName,
      'en_address_line': instance.enAddressLine,
      'en_address_outside': instance.enAddressOutside,
      'furigana': instance.furigana,
      'hihyoji': instance.hihyoji,
    };
