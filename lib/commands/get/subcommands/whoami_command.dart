import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart' as http;

class WhoamiCommand extends Command {
  @override
  String get name => 'whoami';

  @override
  String get description => 'Get IP address of the access point.';

  @override
  Future<void> run() async {
    final apiKey = Platform.environment['KENALL_API_KEY'];
    if (apiKey == null) {
      printErrorAndExit('--- KENALL_API_KEY is not found ---');
    }
    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response = await kenallClient.getWhoami();
      printInfo('type: ${response.remoteAddr.type}');
      printInfo('address: ${response.remoteAddr.address}');
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
