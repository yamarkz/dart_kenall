import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:args/command_runner.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';

class HoujinbangouCommand extends Command {
  HoujinbangouCommand() {
    argParser.addOption(
      'houjinbangou',
      abbr: 'hb',
      help: 'houjinbangou',
    );
  }

  @override
  String get name => 'houjinbangou';

  @override
  String get description => 'Get houjinbangou information from houjinbangou.';

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
    final houjinbangou = argResults!['houjinbangou'] ?? '';
    if (houjinbangou.isEmpty) {
      printErrorAndExit('--- arguments houjinbangou is not found ---');
    }
    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response = await kenallClient.getHoujinbangou(
        GetHoujinBangouRequest(houjinbangou: houjinbangou),
      );
      printInfo('version: ${response.version}');
      printInfo('houjinbangou: ${response.houjinbangou}');
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
