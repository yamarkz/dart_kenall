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
    endpoint: 'https://api.example.com/v1',
    endpointBeta: 'https://api-beta.example.com/v1',
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
          await kenallClient!.getAddress(
            GetAddressRequest(postalCode: 'dummy'),
          );
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

        final response = await kenallClient!.getAddress(
          GetAddressRequest(postalCode: 'dummy'),
        );
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
          await kenallClient!
              .getAddress(GetAddressRequest(postalCode: 'dummy'));
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: https://api.example.com/v1/postalcode/dummy',
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
          await kenallClient!
              .searchAddress(SearchAddressRequest(query: 'dummy'));
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

        final response = await kenallClient!
            .searchAddress(SearchAddressRequest(query: 'dummy'));
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
          await kenallClient!
              .searchAddress(SearchAddressRequest(query: 'dummy'));
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: https://api-beta.example.com/v1/postalcode/?q=dummy&offset=0&limit=50&facet',
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
          await kenallClient!
              .getCities(GetCitiesRequest(prefectureCode: 'dummy'));
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

        final response = await kenallClient!
            .getCities(GetCitiesRequest(prefectureCode: 'dummy'));
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
          await kenallClient!
              .getCities(GetCitiesRequest(prefectureCode: 'dummy'));
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: https://api.example.com/v1/cities/dummy',
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
          await kenallClient!.getWhoami(GetWhoamiRequest());
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

        final response = await kenallClient!.getWhoami(GetWhoamiRequest());
        expect(response.remoteAddr.type, 'v4');
        expect(response.remoteAddr.address, '0.0.0.0');
      });
    });

    group('getHoujinbangou', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/houjinbangou.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!.getHoujinbangou(
              GetHoujinBangouRequest(houjinbangou: '2021001052596'));
        }, returnsNormally);
      });

      test('response object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/houjinbangou.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!.getHoujinbangou(
            GetHoujinBangouRequest(houjinbangou: '2021001052596'));
        expect(response.version, '2021-08-20');
        expect(response.houjinbangou.corporateNumber, '2021001052596');
        expect(response.houjinbangou.process, '12');
      });

      test('throw Exception if invalid params', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          return http.Response('{}', HttpStatus.notFound, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        try {
          await kenallClient!
              .getHoujinbangou(GetHoujinBangouRequest(houjinbangou: 'dummy'));
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: https://api.example.com/v1/houjinbangou/dummy',
          );
        }
      });
    });

    group('searchHoujinbangou', () {
      test('returns normally', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/search_houjinbangous.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        expect(() async {
          await kenallClient!
              .searchHoujinbangou(SearchHoujinbangouRequest(query: 'dummy'));
        }, returnsNormally);
      });

      test('response object is valid', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          final json =
              await File('./testdata/search_houjinbangous.json').readAsString();
          return http.Response(json, HttpStatus.ok, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        final response = await kenallClient!
            .searchHoujinbangou(SearchHoujinbangouRequest(query: 'dummy'));
        expect(response.version, '2021-08-20');
        expect(response.houjinbangous[0].corporateNumber, '2021001052596');
        expect(response.houjinbangous[0].process, '12');
      });

      test('throw Exception if invalid params', () async {
        Future<http.Response> httpResponse(http.Request request) async {
          return http.Response('{}', HttpStatus.notFound, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
          });
        }

        kenallClient = KenallClient(config, MockClient(httpResponse));

        try {
          await kenallClient!
              .searchHoujinbangou(SearchHoujinbangouRequest(query: 'dummy'));
        } catch (error) {
          expect(
            error.toString(),
            'Kenall Error: 404 not found | uri: https://api.example.com/v1/houjinbangou?q=dummy&offset=0&limit=50&facet',
          );
        }
      });
    });
  });
}
