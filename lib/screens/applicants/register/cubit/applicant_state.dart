part of 'applicant_cubit.dart';

abstract class ApplicantState extends Equatable {
  const ApplicantState();

  @override
  List<Object> get props => [];
}

class ApplicantInitial extends ApplicantState {}

class ApplicantCreated extends ApplicantState {}

class ApplicantFailed extends ApplicantState {
  const ApplicantFailed(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
