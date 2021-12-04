import 'dart:io';

import 'package:dart_kenall/src/client/config.dart';
import 'package:dart_kenall/src/client/kenall_exception.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart';

class HttpClient {
  final Config config;
  final Client baseClient;

  HttpClient(this.config, this.baseClient);

  Future<Response> send(
    String path, {
    bool isBeta = false,
  }) async {
    final endpoint = isBeta ? config.endpointBeta : config.endpoint;
    final uri = endpoint + path;
    printInfo('send request to $uri');
    final response = await baseClient
        .get(Uri.parse(uri), headers: _headers)
        .then((response) {
      switch (response.statusCode) {
        case HttpStatus.ok:
          return response;
        case HttpStatus.unauthorized:
          throw KenallException(uri, '401 unauthorized');
        case HttpStatus.paymentRequired:
          throw KenallException(uri, '402 payment required');
        case HttpStatus.forbidden:
          throw KenallException(uri, '403 forbidden');
        case HttpStatus.notFound:
          throw KenallException(uri, '404 not found');
        case HttpStatus.methodNotAllowed:
          throw KenallException(uri, '405 method not allowed');
        case HttpStatus.internalServerError:
          throw KenallException(uri, '500 internal server');
        case HttpStatus.badGateway:
          throw KenallException(uri, '502 bad gateway');
        default:
          throw KenallException(uri, '${response.statusCode} not registered');
      }
    });
    return response;
  }

  Map<String, String> get _headers => {
        HttpHeaders.contentTypeHeader: ContentType.json.toString(),
        HttpHeaders.authorizationHeader: 'Token ' + config.apiKey,
      };
}
