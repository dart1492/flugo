// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flugo_mobile/features/auth/data/models/auth_response_model.dart';
import 'package:flugo_mobile/features/auth/domain/entities/auth_response.dart';

abstract class AuthDatasource {
  Future<AuthResponse> signIn(
    String email,
    String password,
  );
  Future<AuthResponse> signUp(
    String email,
    String password,
    String displayName,
  );
}

class AuthDatasourceImpl extends AuthDatasource {
  Dio dio;
  AuthDatasourceImpl({
    required this.dio,
  });

  @override
  Future<AuthResponse> signIn(String email, String password) async {
    //TODO: Implement sign in
    return AuthResponseModel(token: "asd");
  }

  @override
  Future<AuthResponse> signUp(
    String email,
    String password,
    String displayName,
  ) async {
    //TODO: Implement sign up
    return AuthResponseModel(token: "asd");
  }
}
