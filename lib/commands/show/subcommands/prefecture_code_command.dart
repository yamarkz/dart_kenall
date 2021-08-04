import 'package:args/command_runner.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:dart_kenall/src/utils/prefecture_code.dart';

class PrefectureCodeCommand extends Command {
  PrefectureCodeCommand();

  @override
  String get name => 'prefecture-code';

  @override
  String get description => 'Show prefecture code';

  @override
  void run() {
    printInfo('$prefectureCode');
  }
}
