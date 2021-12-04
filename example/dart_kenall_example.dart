import 'package:dart_kenall/dart_kenall.dart';
import 'package:dart_kenall/src/utils/io.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final config = Config(
    apiKey: '', // set your api key.
  );
  final kenallClient = KenallClient(config, http.Client());
  final response = await kenallClient.getCities(
    prefectureCode: prefectureCode['東京都']!,
  );
  printSuccessAndExit(response.cities[0].toJson().toString());
}
