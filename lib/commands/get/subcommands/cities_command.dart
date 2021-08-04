import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart' as http;

class CitiesCommand extends Command {
  CitiesCommand() {
    argParser.addOption(
      'code',
      abbr: 'c',
      help: 'prefecture code',
    );
  }

  @override
  String get name => 'cities';

  @override
  String get description => 'Get city information from prefecture code.';

  @override
  Future<void> run() async {
    final rest = argResults!.rest;
    if (rest.length > 1) {
      printErrorAndExit('--- Too many arguments specified ---');
    }
    final apiKey = Platform.environment['KENALL_API_KEY'];
    if (apiKey == null) {
      printErrorAndExit('--- KENALL_API_KEY is not found ---');
    }
    final prefectureCode = argResults!['code'] ?? '';
    if (prefectureCode.isEmpty) {
      printErrorAndExit('--- arguments prefecture-code is not found ---');
    }
    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response =
          await kenallClient.getCities(prefectureCode: prefectureCode);
      printInfo('version: ${response.version}');
      printInfo('city count: ${response.cities.length}');
      response.cities.forEach((city) {
        printInfo('city: ${city.toJson()}');
      });
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
