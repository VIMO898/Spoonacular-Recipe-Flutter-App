class CustomException implements Exception {
  final int code;
  final String message;
  const CustomException({required this.code, required this.message});

  @override
  String toString() {
    return 'SpoonacularException { code: $code, message: $message }';
  }
}
