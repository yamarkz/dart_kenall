class KenallException implements Exception {
  final String uri;
  final String message;

  const KenallException(this.uri, this.message);

  @override
  String toString() => 'Kenall Error: $message | uri: $uri';
}
