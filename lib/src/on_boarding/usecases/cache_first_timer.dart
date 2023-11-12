import 'package:course_app2/core/usecases/usecases.dart';
import 'package:course_app2/core/utils/typedef.dart';
import 'package:course_app2/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CacheFirstTimer extends UseCaseWithoutParams<void> {
  CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;
  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}
