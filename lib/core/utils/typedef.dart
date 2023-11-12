import 'package:course_app2/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

typedef DataMap = Map<String, dynamic>;
typedef ResultFuture<T> = Future<Either<Failure, T>>;
