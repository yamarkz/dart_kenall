import 'package:dart_kenall/src/request/request_base.dart';

class GetWhoamiRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, dynamic> get parameters => {};

  @override
  String get path => '/whoami';

  @override
  bool get isBeta => false;

  GetWhoamiRequest();
}
