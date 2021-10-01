import 'dart:convert';

import 'package:dart_kenall/src/client/config.dart';
import 'package:dart_kenall/src/response/get_address_response.dart';
import 'package:dart_kenall/src/response/get_cities_response.dart';
import 'package:dart_kenall/src/client/http_client.dart';
import 'package:dart_kenall/src/response/get_houjinbangou_response.dart';
import 'package:dart_kenall/src/response/get_whoami_response.dart';
import 'package:dart_kenall/src/response/search_address_response.dart';
import 'package:dart_kenall/src/response/search_houjinbangou_response.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class KenallClient {
  final Config config;
  final HttpClient _httpClient;

  KenallClient(
    this.config,
    http.Client baseClient,
  ) : _httpClient = HttpClient(config, baseClient);

  Future<GetAddressResponse> getAddress({
    required String postalCode,
  }) async {
    final response = await _httpClient.send('/postalcode/$postalCode');
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return GetAddressResponse.fromJson(jsonMap);
  }

  @experimental
  Future<SearchAddressResponse> searchAddress({
    required String query,
    int offset = 0,
    int limit = 50,
    String facet = '',
  }) async {
    final response = await _httpClient.send(
      '/postalcode/?q=$query&offset=$offset&limit=$limit&facet=$facet',
      isBeta: true,
    );
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return SearchAddressResponse.fromJson(jsonMap);
  }

  Future<GetCitiesResponse> getCities({
    required String prefectureCode,
  }) async {
    final response = await _httpClient.send('/cities/$prefectureCode');
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return GetCitiesResponse.fromJson(jsonMap);
  }

  Future<GetWhoamiResponse> getWhoami() async {
    final response = await _httpClient.send('/whoami');
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return GetWhoamiResponse.fromJson(jsonMap);
  }

  Future<GetHoujinBangouResponse> getHoujinbangou({
    required String houjinbangou,
  }) async {
    final response = await _httpClient.send('/houjinbangou/$houjinbangou');
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return GetHoujinBangouResponse.fromJson(jsonMap);
  }

  Future<SearchHoujinbangou> searchHoujinbangou({
    required String query,
    int offset = 0,
    int limit = 50,
    String facet = '',
  }) async {
    final response = await _httpClient.send(
      '/houjinbangou/?q=$query&offset=$offset&limit=$limit&facet=$facet',
    );
    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return SearchHoujinbangou.fromJson(jsonMap);
  }
}
