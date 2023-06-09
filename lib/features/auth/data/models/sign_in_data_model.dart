// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/domain/entities/sign_in_data.dart';

class SignInDataModel extends SignInData {
  SignInDataModel({required super.email, required super.password});

  @override
  SignInDataModel copyWith({
    String? email,
    String? password,
  }) {
    return SignInDataModel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }
}
