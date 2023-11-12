import 'package:course_app2/core/usecases/usecases.dart';
import 'package:course_app2/core/utils/typedef.dart';
import 'package:course_app2/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CheckIfUserIsFirstTimer extends UseCaseWithoutParams<bool> {
  CheckIfUserIsFirstTimer(this._repo);
  final OnBoardingRepo _repo;

  @override
  ResultFuture<bool> call() async => _repo.checkIfuserIsFirstTimer();
}
