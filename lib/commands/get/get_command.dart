import 'package:args/command_runner.dart';
import 'package:dart_kenall/commands/get/subcommands/cities_command.dart';
import 'package:dart_kenall/commands/get/subcommands/address_command.dart';
import 'package:dart_kenall/commands/get/subcommands/holidays_command.dart';
import 'package:dart_kenall/commands/get/subcommands/houjinbangou_command.dart';
import 'package:dart_kenall/commands/get/subcommands/whoami_command.dart';

class GetCommand extends Command {
  GetCommand() {
    addSubcommand(CitiesCommand());
    addSubcommand(AddressCommand());
    addSubcommand(HoujinbangouCommand());
    addSubcommand(WhoamiCommand());
    addSubcommand(HolidaysCommand());
  }

  @override
  String get name => 'get';

  @override
  String get description => 'Get kenall api';
}
