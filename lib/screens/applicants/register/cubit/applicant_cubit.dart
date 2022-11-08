import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'applicant_state.dart';

class ApplicantCubit extends Cubit<ApplicantState> {
  ApplicantCubit() : super(ApplicantInitial());
}
