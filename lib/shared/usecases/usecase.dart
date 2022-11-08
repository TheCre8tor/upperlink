import 'package:ruqe/ruqe.dart';
import 'package:equatable/equatable.dart';
import 'package:upperlink/modules/applicants/repository/applicant_repository.interface.dart';

abstract class Usecase<P, T> {
  Future<Result<T, AppError>> call(P params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
