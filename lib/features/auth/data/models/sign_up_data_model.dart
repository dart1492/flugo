// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/domain/entities/sign_up_data.dart';

class SignUpDataModel extends SignUpData {
  SignUpDataModel({
    required super.email,
    required super.username,
    required super.password,
  });

  @override
  SignUpDataModel copyWith({
    String? email,
    String? username,
    String? password,
  }) {
    return SignUpDataModel(
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'username': username,
      'password': password,
    };
  }
}
