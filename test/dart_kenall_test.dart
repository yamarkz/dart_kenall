import 'dart:io';

import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([http.Client])
void main() {
  KenallClient? kenallClient;

  final config = Config(
    apiKey: 'dummyKey',
    endpoint: 'http://api.example.com/v1',
    endpointBeta: 'http://api-beta.example.com/v1',
  );

  group('KenallClient', () {
    group('getAddress', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/addresses.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!.getAddress(postalCode: 'dummy');
        }, returnsNormally);
      });

      test('response and address object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/addresses.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!.getAddress(postalCode: 'dummy');
        expect(response.addresses.length, 1);
        expect(response.version, '2021-06-30');
        expect(response.addresses[0].jisx0402, '13101');
      });

      test('throw Exception if invalid params', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          return http.Response('{}', HttpStatus.notFound, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        try {
          await kenallClient!.getAddress(postalCode: 'dummy');
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: http://api.example.com/v1/postalcode/dummy',
          );
        }
      });
    });

    group('searchAddress', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/search_addresses.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!.searchAddress(query: 'dummy');
        }, returnsNormally);
      });

      test('response and address object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/search_addresses.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!.searchAddress(query: 'dummy');
        expect(response.addresses.length, 3);
        expect(response.version, '2021-06-30');
        expect(response.addresses[0].jisx0402, '14131');
      });

      test('throw Exception if invalid params', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          return http.Response('{}', HttpStatus.notFound, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        try {
          await kenallClient!.searchAddress(query: 'dummy');
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: http://api-beta.example.com/v1/postalcode/?q=dummy&offset=0&limit=50&facet=',
          );
        }
      });
    });

    group('getCities', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/cities.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!.getCities(prefectureCode: 'dummy');
        }, returnsNormally);
      });

      test('response and city object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/cities.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!.getCities(prefectureCode: 'dummy');
        expect(response.cities.length, 62);
        expect(response.version, '2021-06-30');
        expect(response.cities[0].jisx0402, '13101');
      });

      test('throw Exception if invalid params', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          return http.Response('{}', HttpStatus.notFound, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        try {
          await kenallClient!.getCities(prefectureCode: 'dummy');
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: http://api.example.com/v1/cities/dummy',
          );
        }
      });
    });

    group('getWhoami', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/whoami.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!.getWhoami();
        }, returnsNormally);
      });

      test('response object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json = await File('./testdata/whoami.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!.getWhoami();
        expect(response.type, 'v4');
        expect(response.address, '0.0.0.0');
      });
    });
  });
}
