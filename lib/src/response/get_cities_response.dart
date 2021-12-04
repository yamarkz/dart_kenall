import 'package:json_annotation/json_annotation.dart';

import 'package:dart_kenall/src/model/city.dart';

part 'get_cities_response.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
class GetCitiesResponse {
  final String version;
  @JsonKey(name: 'data')
  final List<City> cities;

  const GetCitiesResponse({
    required this.version,
    required this.cities,
  });

  factory GetCitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCitiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCitiesResponseToJson(this);
}
