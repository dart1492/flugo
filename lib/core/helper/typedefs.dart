import 'package:dartz/dartz.dart';
import 'package:flugo_mobile/core/errors/failure.dart';

/// Future that can be failed and portrayed by Either object - Failure or Success
typedef FutureFailable<T> = Future<Either<Failure, T>>;
