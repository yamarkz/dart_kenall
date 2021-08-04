class Corporation {
  final String name;
  final String nameKana;
  final String blockLot;
  final String postOffice;
  final int codeType;

  const Corporation({
    required this.name,
    required this.nameKana,
    required this.blockLot,
    required this.postOffice,
    required this.codeType,
  });

  factory Corporation.fromJson(Map<String, dynamic> json) {
    return Corporation(
      name: json['name'] as String,
      nameKana: json['name_kana'] as String,
      blockLot: json['block_lot'] as String,
      postOffice: json['post_office'] as String,
      codeType: json['code_type'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'name_kana': nameKana,
      'block_lot': blockLot,
      'post_office': postOffice,
      'code_type': codeType,
    };
  }
}
