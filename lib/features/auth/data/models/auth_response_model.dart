// ignore_for_file: public_member_api_docs

import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';

class AuthResponseModel extends AuthResponse {
  AuthResponseModel({
    required super.bearerToken,
    required super.refreshToken,
  });

  factory AuthResponseModel.fromMap(Map<String, dynamic> map) {
    return AuthResponseModel(
      bearerToken: map["access_token"] as String,
      refreshToken: map["refresh_token"] as String,
    );
  }
}
