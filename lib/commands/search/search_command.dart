import 'package:args/command_runner.dart';
import 'package:dart_kenall/commands/search/subcommands/address_command.dart';
import 'package:dart_kenall/commands/search/subcommands/houjinbangou_command.dart';

class SearchCommand extends Command {
  SearchCommand() {
    addSubcommand(AddressCommand());
    addSubcommand(HoujinbangouCommand());
  }

  @override
  String get name => 'search';

  @override
  String get description => 'Search kenall api';
}
