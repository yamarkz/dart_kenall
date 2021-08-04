import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart' as http;

class AddressCommand extends Command {
  AddressCommand() {
    argParser.addOption(
      'code',
      abbr: 'c',
      help: 'address',
    );
  }

  @override
  String get name => 'address';

  @override
  String get description => 'Get address information from postal code.';

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

    final postalCode = argResults!['code'] ?? '';
    if (postalCode.isEmpty) {
      printErrorAndExit('--- arguments postalCode is not found ---');
    }

    final config = Config(apiKey: apiKey!);
    final kenallClient = KenallClient(config, http.Client());
    try {
      final response = await kenallClient.getAddress(postalCode: postalCode);
      printInfo('version: ${response.version}');
      printInfo('city count: ${response.addresses.length}');
      response.addresses.forEach((address) {
        printInfo('address: ${address.toJson()}');
      });
      exit(0);
    } catch (error) {
      printErrorAndExit('--- $error ---');
    }
  }
}
