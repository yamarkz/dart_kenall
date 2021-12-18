import 'package:dart_kenall/src/request/request_base.dart';

class GetHoujinBangouRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, dynamic> get parameters => {};

  @override
  String get path => '/houjinbangou/$houjinbangou';

  @override
  bool get isBeta => false;

  final String houjinbangou;

  GetHoujinBangouRequest({
    required this.houjinbangou,
  });
}
