import 'package:json_annotation/json_annotation.dart';

part 'houjinbangou.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  includeIfNull: true,
  checked: true,
)
class Houjinbangou {
  final String publishedDate;
  final String sequenceNumber;
  final String corporateNumber;
  final String process;
  final String correct;
  final String updateDate;
  final String changeDate;
  final String name;
  final String? nameImageId;
  final String kind;
  final String prefectureName;
  final String cityName;
  final String streetNumber;
  final String? town;
  final String? kyotoStreet;
  final String? blockLotNum;
  final String? building;
  final String? floorRoom;
  final String? addressImageId;
  final String jisx0402;
  final String postCode;
  final String addressOutside;
  final String? addressOutsideImageId;
  final String? closeDate;
  final String? closeCause;
  final String? successorCorporateNumber;
  final String changeCause;
  final String assignmentDate;
  final String enName;
  final String enPrefectureName;
  final String enAddressLine;
  final String enAddressOutside;
  final String furigana;
  final String hihyoji;

  const Houjinbangou({
    required this.publishedDate,
    required this.sequenceNumber,
    required this.corporateNumber,
    required this.process,
    required this.correct,
    required this.updateDate,
    required this.changeDate,
    required this.name,
    required this.nameImageId,
    required this.kind,
    required this.prefectureName,
    required this.cityName,
    required this.streetNumber,
    required this.town,
    required this.kyotoStreet,
    required this.blockLotNum,
    required this.building,
    required this.floorRoom,
    required this.addressImageId,
    required this.jisx0402,
    required this.postCode,
    required this.addressOutside,
    required this.addressOutsideImageId,
    required this.closeDate,
    required this.closeCause,
    required this.successorCorporateNumber,
    required this.changeCause,
    required this.assignmentDate,
    required this.enName,
    required this.enPrefectureName,
    required this.enAddressLine,
    required this.enAddressOutside,
    required this.furigana,
    required this.hihyoji,
  });

  factory Houjinbangou.fromJson(Map<String, dynamic> json) =>
      _$HoujinbangouFromJson(json);

  Map<String, dynamic> toJson() => _$HoujinbangouToJson(this);
}
