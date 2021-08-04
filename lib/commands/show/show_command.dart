import 'package:args/command_runner.dart';
import 'package:dart_kenall/commands/show/subcommands/prefecture_code_command.dart';

class ShowCommand extends Command {
  ShowCommand() {
    addSubcommand(PrefectureCodeCommand());
  }

  @override
  String get name => 'show';

  @override
  String get description => 'Show kenall parameter';
}
