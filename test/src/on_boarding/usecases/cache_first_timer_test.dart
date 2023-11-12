import 'package:course_app2/core/errors/failures.dart';
import 'package:course_app2/src/on_boarding/domain/repos/on_boarding_repo.dart';
import 'package:course_app2/src/on_boarding/domain/usecases/cache_first_timer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'on_boarding_repo.mock.dart';

void main() {
  // Dependencies :
  // * [OnboardingRepos]
  // * [CacheFirsTimer]

  late OnBoardingRepo repo;
  late CacheFirstTimer usecase;

  setUp(() {
    repo = MockOnBoardingRepo();
    usecase = CacheFirstTimer(repo);
  });

  test(
    'Should return [OnBoardingRepo]'
    ' and return the right data',
    () async {
      when(() => repo.cacheFirstTimer()).thenAnswer(
        (_) async => Left(
          ServerFailure(
            message: 'Unknown Error Occurred',
            statusCode: 500,
          ),
        ),
      );
      final result = await usecase();
      expect(
        result,
        equals(
          Left<Failure, dynamic>(
            ServerFailure(
              message: 'Unknown Error Occurred',
              statusCode: 500,
            ),
          ),
        ),
      );

      verify(() => repo.cacheFirstTimer()).called(1);

      verifyNoMoreInteractions(repo);
    },
  );
}
