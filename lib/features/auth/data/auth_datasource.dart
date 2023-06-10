// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/auth/data/models/auth_response_model.dart';

import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';
import 'package:flugo_mobile/features/auth/domain/entities/sign_in_data.dart';
import 'package:flugo_mobile/features/auth/domain/entities/sign_up_data.dart';

abstract class AuthDatasource {
  Future<AuthResponse> signIn(SignInData data);
  Future<void> signUp(SignUpData data);
  Future<String?> refreshToken(String refreshToken);
}

class AuthDatasourceImpl extends AuthDatasource {
  Dio dio;
  AuthDatasourceImpl({
    required this.dio,
  });

  @override
  Future<AuthResponse> signIn(SignInData data) async {
    final result = await dio.get("/sign_in", data: data.toMap());
    return AuthResponseModel.fromMap(result.data);
  }

  @override
  Future<void> signUp(SignUpData data) async {
    await dio.post("/sign_up", data: data.toMap());
  }

  @override
  Future<String?> refreshToken(String refreshToken) async {
    return null;
    // TODO: final result = await dio.g
  }
}
