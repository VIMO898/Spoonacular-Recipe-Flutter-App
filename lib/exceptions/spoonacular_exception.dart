class SpoonacularException implements Exception {
  final int code;
  final String status;
  final String message;
  const SpoonacularException({
    required this.code,
    required this.message,
    required this.status,
  });

  @override
  String toString() {
    return 'SpoonacularException { code: $code, status: $status, message: $message }';
  }
}
