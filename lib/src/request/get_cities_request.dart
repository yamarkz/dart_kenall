import 'package:dart_kenall/src/request/request_base.dart';

class GetCitiesRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, dynamic> get parameters => {};

  @override
  String get path => '/cities/$prefectureCode';

  @override
  bool get isBeta => false;

  final String prefectureCode;

  GetCitiesRequest({
    required this.prefectureCode,
  });
}
