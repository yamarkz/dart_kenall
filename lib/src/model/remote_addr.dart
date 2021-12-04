import 'package:json_annotation/json_annotation.dart';

part 'remote_addr.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
)
class RemoteAddr {
  final String type;
  final String address;

  const RemoteAddr({
    required this.type,
    required this.address,
  });

  factory RemoteAddr.fromJson(Map<String, dynamic> json) =>
      _$RemoteAddrFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteAddrToJson(this);
}
