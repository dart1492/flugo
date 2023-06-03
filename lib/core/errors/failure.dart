// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

import 'error_model.dart';

/// fAILURE class
class Failure extends Equatable {
  @override
  List<Object> get props => [];

  final String errorMessage;
  final List<ErrorModel>? errorData;
  final int? errorCode;

  const Failure({
    this.errorMessage = 'Unexpected error occurred',
    this.errorCode,
    this.errorData,
  });

  @override
  String toString() {
    return "Failure(errorMessage: $errorMessage, errorData $errorData, errorCode: $errorCode)";
  }
}
