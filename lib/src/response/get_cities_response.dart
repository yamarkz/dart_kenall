import 'package:dart_kenall/src/model/city.dart';

class GetCitiesResponse {
  final String version;
  final List<City> cities;

  const GetCitiesResponse({
    required this.version,
    required this.cities,
  });

  factory GetCitiesResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as List<dynamic>;
    return GetCitiesResponse(
      version: json['version'] as String,
      cities: data.map((data) => City.fromJson(data)).toList(),
    );
  }
}
