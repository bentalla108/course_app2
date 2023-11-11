import 'package:course_app2/core/errors/exceptions.dart';
import 'package:equatable/equatable.dart';

// Définition de la classe abstraite Failure
abstract class Failure extends Equatable {
  // Constructeur de la classe Failure
  Failure({required this.message, required this.statusCode})
      : assert(
          statusCode is String || statusCode is int,
          'StatusCode cannot be a ${statusCode.runtimeType}',
        );

  // Propriété représentant le code d'état de l'erreur
  final dynamic statusCode;

  // Propriété représentant le message associé à l'erreur
  final String message;

  // Méthode calculée qui renvoie un message d'erreur formatté
  String get errorMessage => '$statusCode Error : $message';

  // Implémentation de la méthode props de Equatable
  @override
  List<dynamic> get props => [message, statusCode];
}

// Classe représentant une erreur de cache, qui étend Failure
class CacheFailure extends Failure {
  // Constructeur de la classe CacheFailure, appelant le constructeur de Failure
  CacheFailure({required super.message, required super.statusCode});
}

// Classe représentant une erreur serveur, qui étend Failure
class ServerFailure extends Failure {
  // Constructeur de la classe ServerFailure, appelant le constructeur de Failure
  ServerFailure({required super.message, required super.statusCode});

  ServerFailure.fromException(ServerException exception)
      : this(message: exception.message, statusCode: exception.statusCode);
}
