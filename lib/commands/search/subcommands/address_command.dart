import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart' as http;

class AddressCommand extends Command {
  AddressCommand() {
    argParser
      ..addOption('query', abbr: 'q', help: 'query')
      ..addOption('offset', abbr: 'o', help: 'offset')
      ..addOption('limit', abbr: 'l', help: 'limit')
      ..addOption('facet', abbr: 'f', help: 'facet');
  }

  @override
  String get name => 'address';

  @override
  String get description => 'Search address information from query.';

  @override
  Future<void> run() async {
    final rest = argResults!.rest;
    if (rest.length > 5) {
      printErrorAndExit('--- Too many arguments specified ---');
    }
    final apiKey = Platform.environment['KENALL_API_KEY'];
    if (apiKey == null) {
      printErrorAndExit('--- KENALL_API_KEY is not found ---');
    }
    final query = argResults!['query'] ?? '';
    if (query.isEmpty) {
      printErrorAndExit('--- arguments query is not found ---');
    }

    final offset = int.tryParse(argResults!['offset'] ?? '');
    final limit = int.tryParse(argResults!['limit'] ?? '');
    final facet = argResults!['facet'];

    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response = await kenallClient.searchAddress(
        query: query,
        offset: offset ?? 0,
        limit: limit ?? 50,
        facet: facet ?? '',
      );
      printInfo('version: ${response.version}');
      printInfo('query: ${response.query}');
      printInfo('count: ${response.count}');
      printInfo('offset: ${response.offset}');
      printInfo('limit: ${response.limit}');
      response.addresses.forEach((address) {
        printInfo('address: ${address.toJson()}');
      });
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
