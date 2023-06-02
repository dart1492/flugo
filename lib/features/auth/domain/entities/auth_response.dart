// ignore_for_file: public_member_api_docs

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
