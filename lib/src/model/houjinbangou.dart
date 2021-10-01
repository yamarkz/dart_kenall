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

  factory Houjinbangou.fromJson(Map<String, dynamic> json) {
    return Houjinbangou(
      publishedDate: json['published_date'] as String,
      sequenceNumber: json['sequence_number'] as String,
      corporateNumber: json['corporate_number'] as String,
      process: json['process'] as String,
      correct: json['correct'] as String,
      updateDate: json['update_date'] as String,
      changeDate: json['change_date'] as String,
      name: json['name'] as String,
      nameImageId: json['name_image_id'] as String?,
      kind: json['kind'] as String,
      prefectureName: json['prefecture_name'] as String,
      cityName: json['city_name'] as String,
      streetNumber: json['street_number'] as String,
      addressImageId: json['address_image_id'] as String?,
      jisx0402: json['jisx0402'] as String,
      postCode: json['post_code'] as String,
      addressOutside: json['address_outside'] as String,
      addressOutsideImageId: json['address_outside_image_id'] as String?,
      closeDate: json['close_date'] as String?,
      closeCause: json['close_cause'] as String?,
      successorCorporateNumber: json['successor_corporate_number'] as String?,
      changeCause: json['change_cause'] as String,
      assignmentDate: json['assignment_date'] as String,
      enName: json['en_name'] as String,
      enPrefectureName: json['en_prefecture_name'] as String,
      enAddressLine: json['en_address_line'] as String,
      enAddressOutside: json['en_address_outside'] as String,
      furigana: json['furigana'] as String,
      hihyoji: json['hihyoji'] as String,
    );
  }
}
