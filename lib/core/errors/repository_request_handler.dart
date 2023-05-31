import 'package:dartz/dartz.dart';
import 'package:flugo_mobile/core/errors/exceptions.dart';
import 'package:flugo_mobile/core/errors/failure.dart';

class RepositoryRequestHandler<T> {
  Future<Either<Failure, T>> call({
    Failure? defaultFailure,
    required Future<T> Function() request,
  }) async {
    try {
      return Right(await request());
    } catch (error) {
      final failure = await errorHandler(error, defaultFailure);
      return Left(failure);
    }
  }
}
