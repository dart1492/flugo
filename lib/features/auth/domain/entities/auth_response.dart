class AuthResponse {
  String token;
  bool? isError;
  String? errorText;
  AuthResponse({
    required this.token,
    this.isError,
    this.errorText,
  });
}
