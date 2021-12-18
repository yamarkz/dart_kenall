import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:dart_kenall/src/client/config.dart';
import 'package:dart_kenall/src/client/http_client.dart';
import 'package:dart_kenall/src/request/get_address_request.dart';
import 'package:dart_kenall/src/request/get_cities_request.dart';
import 'package:dart_kenall/src/request/get_houjinbangou_request.dart';
import 'package:dart_kenall/src/request/get_whoami_request.dart';
import 'package:dart_kenall/src/request/search_address_request.dart';
import 'package:dart_kenall/src/request/search_houjinbangou_request.dart';
import 'package:dart_kenall/src/response/get_address_response.dart';
import 'package:dart_kenall/src/response/get_cities_response.dart';
import 'package:dart_kenall/src/response/get_houjinbangou_response.dart';
import 'package:dart_kenall/src/response/get_whoami_response.dart';
import 'package:dart_kenall/src/response/search_address_response.dart';
import 'package:dart_kenall/src/response/search_houjinbangou_response.dart';

class KenallClient {
  final Config config;
  final HttpClient _httpClient;

  KenallClient(
    this.config,
    http.Client baseClient,
  ) : _httpClient = HttpClient(config, baseClient);

  Future<GetAddressResponse> getAddress(GetAddressRequest request) async {
    final json = await _httpClient.send(request);
    return GetAddressResponse.fromJson(json);
  }

  @experimental
  Future<SearchAddressResponse> searchAddress(
      SearchAddressRequest request) async {
    final json = await _httpClient.send(request);
    return SearchAddressResponse.fromJson(json);
  }

  Future<GetCitiesResponse> getCities(GetCitiesRequest request) async {
    final json = await _httpClient.send(request);
    return GetCitiesResponse.fromJson(json);
  }

  Future<GetWhoamiResponse> getWhoami(GetWhoamiRequest request) async {
    final json = await _httpClient.send(request);
    return GetWhoamiResponse.fromJson(json);
  }

  Future<GetHoujinBangouResponse> getHoujinbangou(
      GetHoujinBangouRequest request) async {
    final json = await _httpClient.send(request);
    return GetHoujinBangouResponse.fromJson(json);
  }

  Future<SearchHoujinbangouResponse> searchHoujinbangou(
      SearchHoujinbangouRequest request) async {
    final json = await _httpClient.send(request);
    return SearchHoujinbangouResponse.fromJson(json);
  }
}
