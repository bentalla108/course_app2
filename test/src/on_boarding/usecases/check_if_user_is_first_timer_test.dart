import 'package:course_app2/src/on_boarding/domain/repos/on_boarding_repo.dart';
import 'package:course_app2/src/on_boarding/domain/usecases/check_if_user_is_first_timer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'on_boarding_repo.mock.dart';

void main() {
  // Dependencies :
  // * [OnboardingRepos]
  // * [CacheFirsTimer]

  late OnBoardingRepo repo;
  late CheckIfUserIsFirstTimer usecase;

  setUp(() {
    repo = MockOnBoardingRepo();
    usecase = CheckIfUserIsFirstTimer(repo);
  });

  test(
    'Should  get a response from the [MockOnBoardingRepo]',
    () async {
      when(() => repo.checkIfuserIsFirstTimer()).thenAnswer(
        (_) async => const Right(true),
      );
      final result = await usecase();
      expect(
        result,
        equals(
          const Right<dynamic, bool>(true),
        ),
      );

      verify(() => repo.checkIfuserIsFirstTimer()).called(1);

      verifyNoMoreInteractions(repo);
    },
  );
}
