import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:dart_kenall/src/client/config.dart';
import 'package:dart_kenall/src/client/kenall_exception.dart';
import 'package:dart_kenall/src/request/request_base.dart';
import 'package:dart_kenall/src/utils/io.dart';

class HttpClient {
  final Config config;
  final Client baseClient;

  HttpClient(this.config, this.baseClient);

  Future<Map<String, dynamic>> send(RequestBase request) async {
    late Response response;
    final method = request.method.toLowerCase();
    final endpoint = request.isBeta ? config.endpointBeta : config.endpoint;
    final uri = Uri.parse(endpoint + request.path);
    printInfo('send request to $uri');
    switch (method) {
      case 'get':
        response = await baseClient.get(
          Uri.https(uri.host, uri.path, request.parameters),
          headers: _headers,
        );
        break;
      case 'post':
      case 'put':
      case 'delete':
        throw Exception('unsupport method: $method');
      default:
        throw Exception('unexpected method: $method');
    }

    if (response.statusCode != HttpStatus.ok) {
      throw KenallException.fromHttpResponse(response);
    }

    final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
    return jsonMap;
  }

  Map<String, String> get _headers => {
        HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        HttpHeaders.authorizationHeader: 'Token ' + config.apiKey,
      };
}
