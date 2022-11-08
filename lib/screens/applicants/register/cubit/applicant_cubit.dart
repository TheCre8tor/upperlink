import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:upperlink/modules/applicants/domain/domain.dart';
import 'package:upperlink/shared/usecases/usecase.dart';

part 'applicant_state.dart';

class ApplicantCubit extends Cubit<ApplicantState> {
  final Usecase<Applicant, void> usecase;

  ApplicantCubit({required this.usecase}) : super(ApplicantInitial());

  void saveApplicant({required Applicant applicant}) async {
    await usecase(applicant);

    emit(ApplicantCreated());
  }
}
