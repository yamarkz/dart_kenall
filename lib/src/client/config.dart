class Config {
  final String apiKey;
  final String endpoint;
  final String endpointBeta;

  static const endpointBase = 'https://api.kenall.jp/v1';
  static const endpointBetaBase = 'https://api-beta.kenall.jp/v1';

  const Config({
    required this.apiKey,
    this.endpoint = endpointBase,
    this.endpointBeta = endpointBetaBase,
  });

  factory Config.fromJson(Map<String, dynamic> json) {
    return Config(
      apiKey: json['apiKey'],
      endpoint: json['endpoint'],
      endpointBeta: json['endpointBeta'],
    );
  }
}
