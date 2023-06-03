import 'package:dartz/dartz.dart';
import 'package:flugo_mobile/core/errors/exceptions.dart';
import 'package:flugo_mobile/core/errors/failure.dart';

/// Used to perform datasource (network or local storage) calls.
/// If error - utilizes Left part of Either, if success -Right
class RepositoryRequestHandler<T> {
  /// Call to perform
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
