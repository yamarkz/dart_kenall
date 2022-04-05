import 'package:dart_kenall/src/request/request_base.dart';

class GetHolidaysRequest implements RequestBase {
  @override
  bool get isBeta => false;

  @override
  String get method => 'get';

  @override
  Map<String, dynamic> get parameters => {
        'year': year,
        'from': from,
        'to': to,
      };

  @override
  String get path => '/holidays';

  final String year;
  final String from;
  final String to;

  GetHolidaysRequest({
    this.year = '',
    this.from = '',
    this.to = '',
  });
}
