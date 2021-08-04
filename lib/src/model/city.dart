class City {
  final String jisx0402;
  final String prefectureCode;
  final String cityCode;
  final String prefectureKana;
  final String cityKana;
  final String prefecture;
  final String city;

  const City({
    required this.jisx0402,
    required this.prefectureCode,
    required this.cityCode,
    required this.prefectureKana,
    required this.cityKana,
    required this.prefecture,
    required this.city,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      jisx0402: json['jisx0402'],
      prefectureCode: json['prefecture_code'],
      cityCode: json['city_code'],
      prefectureKana: json['prefecture_kana'],
      cityKana: json['city_kana'],
      prefecture: json['prefecture'],
      city: json['city'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'jisx0402': jisx0402,
      'prefecture_code': prefectureCode,
      'city_code': cityCode,
      'prefecture_kana': prefectureKana,
      'city_kana': cityKana,
      'prefecture': prefecture,
      'city': city,
    };
  }
}
