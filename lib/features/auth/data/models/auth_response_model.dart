import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';

class AuthResponseModel extends AuthResponse {
  AuthResponseModel({required super.token});

  factory AuthResponseModel.fromMap(Map<String, dynamic> map) {
    return AuthResponseModel(token: map['token'] as String);
  }
}
