// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class SignInData {
  String email;
  String password;
  SignInData({
    required this.email,
    required this.password,
  });

  SignInData copyWith({
    String? email,
    String? password,
  });

  Map<String, dynamic> toMap();
}
