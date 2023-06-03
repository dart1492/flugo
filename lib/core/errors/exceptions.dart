import 'package:dio/dio.dart';
import 'package:flugo_mobile/core/errors/failure.dart';
import 'package:flugo_mobile/locator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Internally used function to handle errors
Future<Failure> errorHandler(Object error, Failure? defaultFailure) async {
  try {
    if (error is DioError) {
      //print(error.response?.data);
      if (error.response != null) {
        String? serverError = error.response?.data['errorMessage'];
        return Failure(
            errorMessage: serverError ??
                "Sorry, we cannot process your request at the moment. Please contact the support team. ");
      }
    }

    var networkInfo = sl<InternetConnectionChecker>();
    if (!(await networkInfo.hasConnection)) {
      return const Failure(errorMessage: "No internet connection");
    }

    return defaultFailure!;
  } catch (err) {
    return const Failure();
  }
}
