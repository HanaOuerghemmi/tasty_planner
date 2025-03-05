import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure([this.message = 'An unexpected error occurred.']);

  @override
  List<Object?> get props => [message];
}

class OfflineFailure extends Failure {
  const OfflineFailure([String message = 'No internet connection.']) : super(message);
}

class ServerFailure extends Failure {
  const ServerFailure([String message = 'Server error. Please try again later.']) : super(message);
}

class EmptyCacheFailure extends Failure {
  const EmptyCacheFailure([String message = 'No data found in cache.']) : super(message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure([String message = 'A database error occurred.']) : super(message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([String message = 'Unauthorized access.']) : super(message);
}
