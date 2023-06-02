// ignore_for_file: public_member_api_docs

class AuthState {}

class UnauthenticatedState extends AuthState {}

class AuthenticatedState extends AuthState {}

class ErrorAuthenticationState extends AuthState {}
