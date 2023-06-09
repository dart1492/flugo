// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class SignUpData {
  String email;
  String username;
  String password;
  SignUpData({
    required this.email,
    required this.username,
    required this.password,
  });

  SignUpData copyWith({
    String? email,
    String? username,
    String? password,
  });

  Map<String, dynamic> toMap();
}
