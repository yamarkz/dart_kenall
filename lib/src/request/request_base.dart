abstract class RequestBase {
  String get method;
  String get path;
  Map<String, dynamic> get parameters => <String, String>{};
  bool get isBeta;
}
