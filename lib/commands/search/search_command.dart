import 'package:args/command_runner.dart';
import 'package:dart_kenall/commands/search/subcommands/address_command.dart';

class SearchCommand extends Command {
  SearchCommand() {
    addSubcommand(AddressCommand());
  }

  @override
  String get name => 'search';

  @override
  String get description => 'Search kenall api';
}
