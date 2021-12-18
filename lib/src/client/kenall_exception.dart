import 'dart:io';

import 'package:http/http.dart' as http;

class KenallException implements Exception {
  final String uri;
  final String message;

  const KenallException(this.uri, this.message);

  @override
  String toString() => 'Kenall Error: $message | uri: $uri';

  factory KenallException.fromHttpResponse(http.Response response) {
    final url = response.request?.url.toString() ?? '';
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        throw KenallException(url, '401 unauthorized');
      case HttpStatus.paymentRequired:
        throw KenallException(url, '402 payment required');
      case HttpStatus.forbidden:
        throw KenallException(url, '403 forbidden');
      case HttpStatus.notFound:
        throw KenallException(url, '404 not found');
      case HttpStatus.methodNotAllowed:
        throw KenallException(url, '405 method not allowed');
      case HttpStatus.internalServerError:
        throw KenallException(url, '500 internal server');
      case HttpStatus.badGateway:
        throw KenallException(url, '502 bad gateway');
      default:
        return KenallException(url, '${response.statusCode} not registered');
    }
  }
}
