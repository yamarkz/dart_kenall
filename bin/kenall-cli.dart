import 'package:args/command_runner.dart';
import 'package:dart_kenall/commands/commands.dart';
import 'package:dart_kenall/src/utils/io.dart';

Future<void> main(List<String> arguments) async {
  final runner = CommandRunner(
    'kenall-cli',
    'Kenall command-line interface.',
  )
    ..addCommand(GetCommand())
    ..addCommand(SearchCommand())
    ..addCommand(ShowCommand());

  try {
    await runner.run(arguments);
  } catch (error) {
    printErrorAndExit(error.toString());
  }
}
