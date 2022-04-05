import 'dart:io';
import 'package:dart_kenall/src/request/get_holidays_request.dart';
import 'package:http/http.dart' as http;

import 'package:args/command_runner.dart';
import 'package:dart_kenall/src/client/config.dart';
import 'package:dart_kenall/src/client/kenall_client.dart';
import 'package:dart_kenall/src/utils/io.dart';

class HolidaysCommand extends Command {
  HolidaysCommand() {
    argParser.addOption(
      'year',
      abbr: 'y',
      help: 'ex: 2021',
    );
    argParser.addOption(
      'from',
      abbr: 'f',
      help: 'ex: 2000-01-01',
    );
    argParser.addOption(
      'to',
      abbr: 't',
      help: 'ex: 2001-02-01',
    );
  }

  @override
  String get name => 'holidays';

  @override
  String get description => 'Get holidays information from year or from to.';

  @override
  Future<void> run() async {
    final rest = argResults!.rest;
    if (rest.length > 3) {
      printErrorAndExit('--- Too many arguments specified ---');
    }
    final apiKey = Platform.environment['KENALL_API_KEY'];
    if (apiKey == null) {
      printErrorAndExit('--- KENALL_API_KEY is not found ---');
    }
    final year = argResults!['year'] ?? '';
    final from = argResults!['from'] ?? '';
    final to = argResults!['to'] ?? '';

    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response = await kenallClient.getHolidays(
        GetHolidaysRequest(year: year, from: from, to: to),
      );
      printInfo('city count: ${response.holidays.length}');
      response.holidays.forEach((holiday) {
        printInfo('holiday: ${holiday.toJson()}');
      });
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
