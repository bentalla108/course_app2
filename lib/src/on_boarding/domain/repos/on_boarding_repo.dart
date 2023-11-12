import 'package:course_app2/core/utils/typedef.dart';

abstract class OnBoardingRepo {
  const OnBoardingRepo();
  ResultFuture<void> cacheFirstTimer();
  ResultFuture<bool> checkIfuserIsFirstTimer();
}
