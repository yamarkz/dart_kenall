import 'package:dart_kenall/src/request/request_base.dart';

class GetAddressRequest implements RequestBase {
  @override
  String get method => 'get';

  @override
  Map<String, dynamic> get parameters => {};

  @override
  String get path => '/postalcode/$postalCode';

  @override
  bool get isBeta => false;

  final String postalCode;

  GetAddressRequest({
    required this.postalCode,
  });
}
